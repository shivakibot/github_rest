import 'package:flutter/material.dart';
import 'package:github_rest/view/greeting.dart';
import 'package:github_rest/view/home.dart';

/// アプリ ルーティング情報
/// pushNamed の場合、pathからIDEで view実装に追いづらいのと
/// スペルミスで実行エラーになるのを解消する為にクラスを作成
enum AppRoute{
  home('/home'),
  greeting('/greeting');
  final String path;
  const AppRoute(this.path);
}

final Map<String, WidgetBuilder> routingMap = {
  AppRoute.home.path: (context) => const Home(),
  AppRoute.greeting.path: (context) => const Greeting(),
};
