import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:github_rest/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MyApp(),
    ));
    await _widgetTest(tester);
  });
}

// Future<void> integrate(WidgetTester tester)async{
//   await _widgetTest(tester);
// }

Future<void> _widgetTest(WidgetTester tester) async{
  // Verify that our counter starts at 0.
  expect(find.text('0'), findsOneWidget);
  expect(find.text('1'), findsNothing);

  // Tap the '+' icon and trigger a frame.
  await tester.tap(find.byIcon(Icons.add));
  await tester.pump();

  // Verify that our counter has incremented.
  expect(find.text('0'), findsNothing);
  expect(find.text('1'), findsOneWidget);
}