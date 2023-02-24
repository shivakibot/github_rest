import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/schema_owner.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/model/schema_search_repositories.dart';
import 'package:github_rest/repository/github_rest.dart';
import 'package:github_rest/viewModel/common.dart';
import 'package:github_rest/viewModel/home_vm.dart';
import 'package:integration_test/integration_test.dart';
import 'package:github_rest/main.dart' as app;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../test/widget/greeting_test.dart' as greeting;

import '../test/unit/github_rest_test.mocks.dart';

@GenerateMocks([GithubRest])
void main() {
  // init
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // CI環境で実行する為、通信処理はモック
  late MockGithubRest mockRepo = MockGithubRest();
  const int totalCount = 0;
  const bool incompleteResults = false;
  const String fullName = 'test';
  const String avatarUrl =
      'https://avatars.githubusercontent.com/u/54189261?v=4';
  const String language = 'dart';
  const int stargazersCount = 0;
  const int watchersCount = 1;
  const int forksCount = 2;
  const int issuesCount = 3;
  const SchemeRepository myRepo = SchemeRepository(
      fullName: fullName,
      owner: SchemeOwner(avatarUrl: avatarUrl),
      language: language,
      stargazersCount: stargazersCount,
      watchersCount: watchersCount,
      forksCount: forksCount,
      issuesCount: issuesCount);
  List<SchemeRepository> items = List.generate(
    15,
    (index) => myRepo,
  );
  SchemeSearchRepositories mockData = SchemeSearchRepositories(
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      items: items);

  group('regression test', () {
    testWidgets('validation form text is empty', (WidgetTester tester) async {
      // param
      const String validationMessage = '文字列を入力してください';
      // start
      runApp(ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(mockRepo),
        ],
        child: const app.MyApp(),
      ));
      await tester.pumpAndSettle();
      await greeting.integrate(tester);
      Finder formField = find.byKey(const ValueKey('search form'));
      await _inputTextAtSearchForm(tester, formField, '');
      // expect validator message
      Finder textFinder = find.text(validationMessage);
      final validatorWidget =
          find.descendant(of: formField, matching: textFinder);
      final validator = validatorWidget.first.evaluate().single.widget as Text;
      expect(validator.data, validationMessage);
    });

    testWidgets('show repository Detail', (WidgetTester tester) async {
      // param
      when(mockRepo.execSearchRepository('test', 1)).thenAnswer((realInvocation) => Future.value(mockData));
      // start
      runApp(ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(mockRepo),
          searchProvider.overrideWith((ref) => ref.read(StateProvider<String>((ref) => 'test'))),
        ],
        child: const app.MyApp(),
      ));
      await tester.pumpAndSettle();
      await greeting.integrate(tester);
      Finder formField = find.byKey(const ValueKey('search form'));
      await _inputTextAtSearchForm(tester, formField, 'test');
      await tester.pump(const Duration(milliseconds: 1000));
      // navigation home
      Finder listWidget = find.byKey(const ValueKey('display data'));
      expect(listWidget, findsOneWidget);
      Finder listTileFinder = find.byKey(const ValueKey('item 1'));
      await tester.tap(listTileFinder);
      await tester.pump(const Duration(milliseconds: 1000));
      // tap Detail
    });
  });
}

Future<void> _inputTextAtSearchForm(
    WidgetTester tester, Finder form, String str) async {
  await tester.enterText(form, str);
  await tester.testTextInput.receiveAction(TextInputAction.done);
  await tester.pump(const Duration(milliseconds: 1000));
  return await tester.pump(const Duration(milliseconds: 1000));
}
