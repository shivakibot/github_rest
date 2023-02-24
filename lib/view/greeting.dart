import 'package:flutter/material.dart';

import 'component/search_action_bar.dart';
import 'component/setting_drawer.dart';

/// 最初に遷移する画面<br>
/// アプリの利用方法の説明をしつつ、ヘッダー内の検索窓にautoFocusし、<br>
/// そのまま検索が行えるようにする。
/// 初期表示以降は検索結果画面(=Home)に遷移する。
class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
        onTap: () => focusNode.unfocus(),
        child: SafeArea(
          child: Scaffold(
            key: const ValueKey('greeting'),
            drawer: const SettingDrawer(),
            appBar: const SearchActionBar(
              fromGreeting: true,
            ),
            body: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 3 / 4,
                child: const Text(
                  'Github のリポジトリを検索するアプリです\n'
                  'トップの検索バーから検索してみましょう',
                  key: ValueKey('greetingText'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
