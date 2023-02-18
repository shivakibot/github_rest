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
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
void main() {
  final testRepo = GithubRest(isTest: true);
  final globalRepo = GithubRest();
  final mockRepo = MockGithubRest();
  const String str01 = 'github_rest';
  const String str02 = 'not found';
  const int first = 1;
  const int seconds = 2;
  group(testRepo.toString(), () {
    // API仕様（schema)通りのフォーマットかどうかを確認する
    test('normally search my repo', () async {
      final res = await _execAllowFail(testRepo, str01, first);
      expect(res.totalCount, 1);
      expect(res.incompleteResults, false);
      expect(res.items[0].name, str01);
      expect(res.items[0].ownerIconUrl, null);
      expect(res.items[0].language, 'Dart');
      expect(res.items[0].stargazersCount, 0);
      expect(res.items[0].watchersCount, 0);
      expect(res.items[0].forksCount, 0);
      expect(res.items[0].issuesCount, 0);
    });
    // API仕様（schema)通りのフォーマットかどうかを確認する
    test('normally search result 0', () async {
      final res = await _execAllowFail(testRepo, str02, first);
      expect(res.totalCount, 0);
      expect(res.incompleteResults, false);
      expect(res.items, []);
    });
    // API仕様（schema)通りの動作であることを確認し、中身のデータは精査しない
    test('normally search page 1 and perPage 10', () async {
      final res = await _execAllowFail(globalRepo, str01, first);
      debugPrint(res.items.toString());
      expect(res.items.length, 10);
    });
    // API仕様（schema)通りの動作であることを確認し、中身のデータは精査しない
    test('normally search page 2 and perPage 10', () async {
      final res = await _execAllowFail(globalRepo, str01, seconds);
      debugPrint(res.items.toString());
      expect(res.items.length, 10);
    });
    // mock で internalError を再現し、throwされることを確認する
    test('abnormally InternalError', () async {
      when(mockRepo.execSearchRepository(str01, first)).thenThrow(InternalError());
      try {
        await mockRepo.execSearchRepository(str01, first);
        fail('');
      } on InternalError {
        return;
      } catch (e) {
        /// 到達しないが一応
        fail('');
      }
    });
    // mock で API server error を再現し、throwされることを確認する
    test('abnormally GithubServerError', () async {
      when(mockRepo.execSearchRepository(str01, first)).thenThrow(GithubServerError());
      try {
        await mockRepo.execSearchRepository(str01,first);
        fail('');
      } on GithubServerError {
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
    fail(GithubServerError().toString());
  } catch (e) {
    fail('${e.runtimeType}');
  }
}
