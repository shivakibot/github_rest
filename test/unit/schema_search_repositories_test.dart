import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/model/schema_search_repositories.dart';

/// 直接データクラスを生成する想定ユースケースはないが、一応正常性ケースを記述。
/// fromJson()は [GithubRest] の UnitTest で実施する。
void main() {
  group('SchemeSearchRepositories.dart', () {
    test('model init', () {
      const int totalCount = 0;
      const bool incompleteResults = false;
      const List<SchemeRepository> items = [];
      const SchemeSearchRepositories repo01 = SchemeSearchRepositories(
          totalCount: totalCount,
          incompleteResults: incompleteResults,
          items: items
      );
      expect(repo01.totalCount, totalCount);
      expect(repo01.incompleteResults, incompleteResults);
      expect(repo01.items, items);
    });
  });
}
