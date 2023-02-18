import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/repository/github_rest.dart';

/// 直接データクラスを生成する想定ユースケースはないが、一応正常性ケースを記述。
/// fromJson()は [GithubRest] の UnitTest で実施する。
void main() {
  group('schema_repository.dart', () {
    test('model init with null', () {
      const String name = 'test';
      const String? ownerIconUrl = null;
      const String? language = null;
      const int stargazersCount = 0;
      const int watchersCount = 1;
      const int forksCount = 2;
      const int issuesCount = 3;
      const SchemeRepository repo01 = SchemeRepository(
          name: name,
          ownerIconUrl: ownerIconUrl,
          language: language,
          stargazersCount: stargazersCount,
          watchersCount: watchersCount,
          forksCount: forksCount,
          issuesCount: issuesCount);
      expect(repo01.name, name);
      expect(repo01.ownerIconUrl, ownerIconUrl);
      expect(repo01.language, language);
      expect(repo01.stargazersCount, stargazersCount);
      expect(repo01.watchersCount, watchersCount);
      expect(repo01.forksCount, forksCount);
      expect(repo01.issuesCount, issuesCount);
    });
    test('model init with not null', () {
      const String name = 'test';
      const String ownerIconUrl = 'Icon/Path';
      const String language = 'dart';
      const int stargazersCount = 0;
      const int watchersCount = 1;
      const int forksCount = 2;
      const int issuesCount = 3;
      const SchemeRepository repo01 = SchemeRepository(
          name: name,
          ownerIconUrl: ownerIconUrl,
          language: language,
          stargazersCount: stargazersCount,
          watchersCount: watchersCount,
          forksCount: forksCount,
          issuesCount: issuesCount);
      expect(repo01.name, name);
      expect(repo01.ownerIconUrl, ownerIconUrl);
      expect(repo01.language, language);
      expect(repo01.stargazersCount, stargazersCount);
      expect(repo01.watchersCount, watchersCount);
      expect(repo01.forksCount, forksCount);
      expect(repo01.issuesCount, issuesCount);
    });
  });
}
