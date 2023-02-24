import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/view/greeting.dart';
import 'package:github_rest/view/component/route.dart';
import 'package:github_rest/viewModel/common.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /// Material3 をそのまま適応
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(),
      ),
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
      ),
      themeMode: appTheme,
      home: const Greeting(),
      routes: routingMap,
    );
  }
}