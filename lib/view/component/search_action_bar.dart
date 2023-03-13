import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/viewModel/home_vm.dart';
import 'package:github_rest/viewModel/common.dart';

class SearchActionBar extends ConsumerWidget implements PreferredSizeWidget {
  final GlobalObjectKey<FormState> formKey;
  final String route;
  final bool auto;

  const SearchActionBar(
      {super.key, required this.formKey, this.route = '', this.auto = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    return AppBar(
      key: const ValueKey('searchActionBar'),
      toolbarHeight: 200,
      centerTitle: true,
      title: Form(
        key: formKey,
        child: TextFormField(
          key: const ValueKey('search form'),
          // maxLength: 128,
          maxLines: 1,
          autofocus: auto,
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
            if (value.length > 128) return '検索文字列が長すぎます';
            return null;
          },

          /// 検索を実行する
          onFieldSubmitted: (value) {
            if (formKey.currentState!.validate()) {
              final searchState = ref.read(searchProvider.notifier);
              final homeVM = ref.read(homeStateNotifier.notifier);
              searchState.state = value;
              homeVM.searchRepository();
              if (route.isNotEmpty) {
                /// 遷移させる
                Navigator.of(context).pushReplacementNamed(route);
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
