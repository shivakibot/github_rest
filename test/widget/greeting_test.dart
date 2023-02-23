import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/view/greeting.dart';

void main() {
  testWidgets('widget Test Greeting', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(
        child: MaterialApp(
      home: Greeting(),
    )));
    await _widgetTest(tester);
  });
}

// Future<void> integrate(WidgetTester tester)async{
//   await _widgetTest(tester);
// }

Future<void> _widgetTest(WidgetTester tester) async {
  // search Action bar
  // 共通部品の為、greeting widget test でのみチェックする
  //// check Drawer
  Finder greeting = find.byKey(const ValueKey('greeting'));
  final ScaffoldState state = tester.firstState(greeting);
  Finder drawerHeader = find.byKey(const ValueKey('drawer header'));
  Finder settingTheme = find.byKey(const ValueKey('setting theme'));
  Finder etc = find.byKey(const ValueKey('etc'));
  expect(greeting, findsOneWidget);
  state.openDrawer();
  await tester.pump();
  expect(drawerHeader, findsOneWidget);
  expect(settingTheme, findsOneWidget);
  expect(etc, findsOneWidget);
  state.closeDrawer();
  await tester.pump();
  //// check textField
  Finder searchActionBar = find.byKey(const ValueKey('searchActionBar'));
  expect(searchActionBar, findsOneWidget);

  // Greeting
  //// check greeting text
  Finder greetingText = find.byKey(const ValueKey('greetingText'));
  expect(greetingText, findsOneWidget);
  final text = greetingText.evaluate().single.widget as Text;
  expect(
      text.data,
      'Github のリポジトリを検索するアプリです\n''トップの検索バーから検索してみましょう');
}
