import 'package:flutter/material.dart';
// import '../view/detail.dart';
import '../view/home.dart';

/// アプリ ルーティング情報
/// pushNamed の場合、pathからIDEで view実装に追いづらいのと
/// スペルミスで実行エラーになるのを解消する為にクラスを作成
enum AppRoute{
  home('/home');
  // detail('/detail');
  final String path;
  const AppRoute(this.path);
}

final Map<String, WidgetBuilder> routingMap = {
  AppRoute.home.path: (context) => const Home(),
  // AppRoute.detail.path: (context) => const Detail(),
};
