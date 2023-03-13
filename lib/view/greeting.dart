import 'package:flutter/material.dart';

import 'component/route.dart';
import 'component/search_action_bar.dart';
import 'component/setting_drawer.dart';

/// 最初に遷移する画面<br>
/// アプリの利用方法の説明をしつつ、ヘッダー内の検索窓にautoFocusし、<br>
/// そのまま検索が行えるようにする。
/// 初期表示以降は検索結果画面(=Home)に遷移する。
class Greeting extends StatefulWidget {
  const Greeting({super.key});

  @override
  State<StatefulWidget> createState() {
    return GreetingState();
  }
}

class GreetingState extends State<Greeting>{
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Focus(
      focusNode: _focusNode,
      child: GestureDetector(
        onTap: () => _focusNode.unfocus(),
        child: SafeArea(
          child: Scaffold(
            key: const ValueKey('greeting'),
            drawer: const SettingDrawer(),
            appBar: SearchActionBar(
              auto: true,
              route: AppRoute.home.path,
              formKey: const GlobalObjectKey<FormState>('fromGreeting'),
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
