import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/error//githubServerError.dart';
import 'package:github_rest/error//internalError.dart';
import 'package:github_rest/model/schema_search_repositories.dart';
import 'package:github_rest/repository/github_rest.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'github_rest_test.mocks.dart';

@GenerateMocks([GithubRest])

/// Github Rest API の 仕様に則る。<br>
/// テストケースが通らなくなった場合、API仕様が変更された可能性がある為、再精査すること。
/// また、仕様変更により更新された場合、参照リンクも更新すること。
/// API version: 2022-11-28
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
void main() {
  final mockRepo = MockGithubRest();
  const String str01 = 'github_rest';
  const String str02 = 'not found';
  const int first = 1;
  const int seconds = 2;
  group(GithubRest().runtimeType, () {
    // API仕様（schema)通りのフォーマットかどうかを確認する
    test('normally search my repo', () async {
      final repo = GithubRest(isTest: true);
      final res = await _execAllowFail(repo, str01, first);
      debugPrint(res.items.toString());
      expect(res.totalCount, 1);
      expect(res.incompleteResults, false);
      expect(res.items[0].fullName, 'shivakibot/$str01');
      expect(res.items[0].owner.avatarUrl, 'https://avatars.githubusercontent.com/u/54189261?v=4');
      expect(res.items[0].language, 'Dart');
      expect(res.items[0].stargazersCount, 0);
      expect(res.items[0].watchersCount, 0);
      expect(res.items[0].forksCount, 0);
      expect(res.items[0].issuesCount, 0);
    });
    // API仕様（schema)通りのフォーマットかどうかを確認する
    test('normally search result 0', () async {
      final repo = GithubRest(isTest: true);
      final res = await _execAllowFail(repo, str02, first);
      debugPrint(res.items.toString());
      expect(res.totalCount, 0);
      expect(res.incompleteResults, false);
      expect(res.items, []);
    });
    // API仕様通りの動作(perPage 及び page option)を確認し、中身のデータは精査しない
    test('normally search page 1 and perPage 10', () async {
      final repo = GithubRest();
      final res01 = await _execAllowFail(repo, str01, first);
      final res02 = await _execAllowFail(repo, str01, seconds);
      debugPrint(res01.items.toString());
      debugPrint(res02.items.toString());
      expect(res01.items.length, 10);
      expect(res02.items.length, 10);
      bool notMatch = res01.items[0].fullName != res02.items[0].fullName;
      expect(notMatch, true);
    });
    // mock で internalError を再現し、throwされることを確認する
    test('abnormally InternalError', () async {
      when(mockRepo.execSearchRepository(str01, first)).thenThrow(InternalError());
      try {
        await mockRepo.execSearchRepository(str01, first);
        fail('');
      } on InternalError catch (e){
        debugPrint(e.cause);
        return;
      } catch (e) {
        /// 到達しないが一応
        fail('');
      }
    });
    // mock で API server error を再現し、throwされることを確認する
    test('abnormally GithubServerError', () async {
      when(mockRepo.execSearchRepository(str01, first)).thenThrow(GithubServerError('500'));
      try {
        await mockRepo.execSearchRepository(str01,first);
        fail('');
      } on GithubServerError catch (e){
        expect(e.cause, '500');
        return;
      } catch (e) {
        /// 到達しないが一応
        fail('');
      }
    });
  });
}

Future<SchemeSearchRepositories> _execAllowFail(
    GithubRest repo, String str, int page) {
  try {
    return repo.execSearchRepository(str, page);
  } on GithubServerError {
    fail(GithubServerError('500').toString());
  } catch (e) {
    fail('${e.runtimeType}');
  }
}
