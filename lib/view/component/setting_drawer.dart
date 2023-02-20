import 'package:flutter/material.dart';

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
              )
          ),
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

class _SwitchThemeTile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SwitchThemeTileState();
  }

}

class _SwitchThemeTileState extends State<_SwitchThemeTile>{
  bool theme = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: const ValueKey('setting theme'),
      // leading: Icon(Icons.light_mode),
      onTap: () => _switch(theme),
      leading: AnimatedSwitcher(
        duration: const Duration(seconds: 2),
        child: theme ? const Icon(Icons.light_mode) :  const Icon(Icons.dark_mode),
      ),
      title: const Text('テーマ変更'),
    );
  }
  void _switch(bool tap){
    setState(() {
      theme = !tap;
    });
  }
}