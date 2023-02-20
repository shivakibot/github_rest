import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/schema_owner.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/repository/github_rest.dart';

/// 直接データクラスを生成する想定ユースケースはないが、一応正常性ケースを記述。
/// fromJson()は [GithubRest] の UnitTest で実施する。
void main() {
  group('schema_repository.dart', () {
    test('model init with null', () {
      const String fullName = 'test';
      const String avatarUrl = 'https://avatars.githubusercontent.com/u/54189261?v=4';
      const String? language = null;
      const int stargazersCount = 0;
      const int watchersCount = 1;
      const int forksCount = 2;
      const int issuesCount = 3;
      const SchemeRepository repo01 = SchemeRepository(
          fullName: fullName,
          owner: SchemeOwner(avatarUrl: avatarUrl),
          language: language,
          stargazersCount: stargazersCount,
          watchersCount: watchersCount,
          forksCount: forksCount,
          issuesCount: issuesCount);
      expect(repo01.fullName, fullName);
      expect(repo01.owner.avatarUrl, avatarUrl);
      expect(repo01.language, language);
      expect(repo01.stargazersCount, stargazersCount);
      expect(repo01.watchersCount, watchersCount);
      expect(repo01.forksCount, forksCount);
      expect(repo01.issuesCount, issuesCount);
    });
    test('model init with not null', () {
      const String fullName = 'test';
      const String avatarUrl = 'https://avatars.githubusercontent.com/u/54189261?v=4';
      const String language = 'dart';
      const int stargazersCount = 0;
      const int watchersCount = 1;
      const int forksCount = 2;
      const int issuesCount = 3;
      const SchemeRepository repo01 = SchemeRepository(
          fullName: fullName,
          owner: SchemeOwner(avatarUrl: avatarUrl),
          language: language,
          stargazersCount: stargazersCount,
          watchersCount: watchersCount,
          forksCount: forksCount,
          issuesCount: issuesCount);
      expect(repo01.fullName, fullName);
      expect(repo01.owner.avatarUrl, avatarUrl);
      expect(repo01.language, language);
      expect(repo01.stargazersCount, stargazersCount);
      expect(repo01.watchersCount, watchersCount);
      expect(repo01.forksCount, forksCount);
      expect(repo01.issuesCount, issuesCount);
    });
  });
}
