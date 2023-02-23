import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/viewModel/home_vm.dart';
import 'package:github_rest/view/component/route.dart';
import 'package:github_rest/viewModel/common.dart';

final _formKey = GlobalKey<FormState>();
class SearchActionBar extends ConsumerWidget implements PreferredSizeWidget {
  final bool fromGreeting;
  const SearchActionBar({required this.fromGreeting, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeVM = ref.watch(homeStateNotifier.notifier);
    final search = ref.watch(searchProvider);
    return AppBar(
      key: const ValueKey('searchActionBar'),
      toolbarHeight: 200,
      centerTitle: true,
      title: Form(
        key: _formKey,
        child: TextFormField(
          maxLines: 1,
          autofocus: fromGreeting,
          initialValue: search,
          textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            border: InputBorder.none,
            hintText: 'search repository...',
            errorStyle: TextStyle(
              fontSize: 10,
              height: 1,
            ),
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) return '文字列を入力してください';
            if (value.length > 256) return '検索文字列が長すぎます';
            return null;
          },
          /// 検索を実行する
          onFieldSubmitted: (value) {
            if(_formKey.currentState!.validate()){
              final searchState = ref.read(searchProvider.notifier);
              searchState.state = value;
              homeVM.searchRepository();
              if (fromGreeting) {
                /// Greeting 画面からの実行は Home 画面に遷移させる
                Navigator.of(context).pushReplacementNamed(AppRoute.home.path);
              }
            }
          },
        ),
      ),

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
