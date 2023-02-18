import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/gitRepository.dart';

void main(){
  group(const GitRepository().toString(), () {
    test('model init', () {
      GitRepository repo01 = const GitRepository();
      expect(repo01.name, '');
      expect(repo01.ownerIconUrl, '');
      expect(repo01.language, '');
      expect(repo01.stargazersCount, 0);
      expect(repo01.watchersCount, 0);
      expect(repo01.forksCount, 0);
      expect(repo01.issuesCount, 0);
    });
  });

}