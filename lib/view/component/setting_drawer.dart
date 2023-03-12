import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/view/extension/current_theme.dart';

import '../../viewModel/common.dart';

class SettingDrawer extends StatelessWidget {
  const SettingDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: const ValueKey('drawer'),
      child: ListView(
        children: [
          const DrawerHeader(
              child: ListTile(
            key: ValueKey('drawer header'),
            title: Text('Github'),
            subtitle: Text('REST API app'),
          )),
          _SwitchThemeTile(),
          ListTile(
            key: const ValueKey('etc'),
            onTap: () {
              showLicensePage(
                context: context,
                applicationName: 'github rest',
                applicationLegalese: '2023 shivakibot',
              );
            },
            leading: const Icon(Icons.more_horiz),
            title: const Text('バージョン情報、権利表示'),
          ),
        ],
      ),
    );
  }
}

class _SwitchThemeTile extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _SwitchThemeTileState();
  }
}

class _SwitchThemeTileState extends ConsumerState<_SwitchThemeTile> {
  @override
  Widget build(BuildContext context) {
    final appTheme = ref.watch(appThemeProvider);
    final appThemeState = ref.watch(appThemeProvider.notifier);
    return ListTile(
      key: const ValueKey('setting theme'),
      onTap: () {
        debugPrint('context.isDarkMode ${context.isDarkMode}');
        _adoptedDarkMode(context, appTheme)
            ? appThemeState.state = ThemeMode.light
            : appThemeState.state = ThemeMode.dark;
      },
      leading: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: _adoptedDarkMode(context, appTheme)
            ? const Icon(
            key: ValueKey('dark_mode'),
            Icons.dark_mode,
        )
            : const Icon(
            key: ValueKey('light_mode'),
            Icons.light_mode,
        ),
      ),
      title: const Text('テーマ変更'),
    );
  }

  bool _adoptedDarkMode(BuildContext context,ThemeMode appTheme){
    /// 端末のテーマモード(ThemeMode.system、不変)が darkかどうか
    if(appTheme == ThemeMode.system){
      return context.isDarkMode;
    }
    return appTheme == ThemeMode.dark;
  }
}
