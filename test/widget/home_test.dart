import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/error/githubServerError.dart';
import 'package:github_rest/model/schema_owner.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/repository/github_rest.dart';
import 'package:github_rest/view/home.dart';
import 'package:github_rest/viewModel/home_vm.dart';

void main() {
  group('widget Test Home', () {});
  testWidgets('async Loading (init)', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(
        overrides: [],
        child: MaterialApp(
          home: Home(),
        )));
    Finder loading = find.byKey(const ValueKey('async loading'));
    expect(loading, findsOneWidget);
  });
  testWidgets('async error', (WidgetTester tester) async {
    final error = GithubServerError('test case error');
    await tester.pumpWidget(ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(GithubRest(isTest: true)),
          homeStateNotifier.overrideWith((ref) => HomeStateNotifier(
              ref,
              ref.watch(repositoryProvider),
              AsyncValue.error(error, StackTrace.fromString('')))),
        ],
        child: const MaterialApp(
          home: Home(),
        )));
    Finder textWidget = find.byKey(const ValueKey('async error'));
    final text = textWidget.evaluate().single.widget as Text;
    expect(text.data, 'Github で\nエラーが発生しました\n${error.errorCode}');
  });
  testWidgets('async data but 0', (WidgetTester tester) async {
    await tester.pumpWidget(ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(GithubRest(isTest: true)),
          homeStateNotifier.overrideWith((ref) => HomeStateNotifier(
              ref,
              ref.watch(repositoryProvider),
              const AsyncValue<List<SchemeRepository>>.data(
                  <SchemeRepository>[]))),
        ],
        child: const MaterialApp(
          home: Home(),
        )));
    Finder textWidget = find.byKey(const ValueKey('no data'));
    final text = textWidget.evaluate().single.widget as Text;
    expect(text.data, '検索結果が\n見つかりませんでした');
  });
  testWidgets('async data but 0', (WidgetTester tester) async {
    const String fullName = 'test';
    const String avatarUrl = 'https://avatars.githubusercontent.com/u/54189261?v=4';
    const String language = 'dart';
    const int stargazersCount = 0;
    const int watchersCount = 1;
    const int forksCount = 2;
    const int issuesCount = 3;
    final mockData = <SchemeRepository>[
      const SchemeRepository(
          fullName: fullName,
          language: language,
          owner: SchemeOwner(
            avatarUrl: avatarUrl
          ),
          stargazersCount: stargazersCount,
          watchersCount: watchersCount,
          forksCount: forksCount,
          issuesCount: issuesCount)
    ];
    await tester.pumpWidget(ProviderScope(
        overrides: [
          repositoryProvider.overrideWithValue(GithubRest(isTest: true)),
          homeStateNotifier.overrideWith((ref) => HomeStateNotifier(
              ref,
              ref.watch(repositoryProvider),
              AsyncValue<List<SchemeRepository>>.data(mockData))),
        ],
        child: const MaterialApp(
          home: Home(),
        )));
    Finder listWidget = find.byKey(const ValueKey('display data'));
    expect(listWidget, findsOneWidget);
  });
}

// Future<void> integrate(WidgetTester tester)async{
//   await _widgetTest(tester);
// }
