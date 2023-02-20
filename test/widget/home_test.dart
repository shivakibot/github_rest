import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/view/home.dart';

void main() {
  testWidgets('widget Test Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));
    await _widgetTest(tester);
  });
}

// Future<void> integrate(WidgetTester tester)async{
//   await _widgetTest(tester);
// }

Future<void> _widgetTest(WidgetTester tester) async{
  //drawer
  Finder home = find.byKey(const ValueKey('home'));
  final ScaffoldState state = tester.firstState(home);
  Finder drawerHeader = find.byKey(const ValueKey('drawer header'));
  Finder settingTheme = find.byKey(const ValueKey('setting theme'));
  Finder etc = find.byKey(const ValueKey('etc'));
  // open drawer
  expect(home, findsOneWidget);
  state.openDrawer();
  await tester.pump();
  expect(drawerHeader, findsOneWidget);
  expect(settingTheme, findsOneWidget);
  expect(etc, findsOneWidget);
}