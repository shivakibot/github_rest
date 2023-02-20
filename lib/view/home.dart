import 'package:flutter/material.dart';
import '../model/schema_owner.dart';
import '../model/schema_repository.dart';
import 'component/setting_drawer.dart';
import 'detail.dart';

const String fullName = 'test';
const String avatarUrl = 'https://avatars.githubusercontent.com/u/54189261?v=4';
const String? language = null;
const int stargazersCount = 0;
const int watchersCount = 1;
const int forksCount = 2;
const int issuesCount = 3;
const SchemeRepository repo = SchemeRepository(
    fullName: fullName,
    owner: SchemeOwner(avatarUrl: avatarUrl),
    language: language,
    stargazersCount: stargazersCount,
    watchersCount: watchersCount,
    forksCount: forksCount,
    issuesCount: issuesCount
);
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final items = List.filled(10,repo);
    return SafeArea(
      child: Scaffold(
        key: const ValueKey('home'),
        drawer: const SettingDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: TextFormField(
            maxLines: 1,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'repository',
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                debugPrint('');
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            if (index == items.length) {
              /// TODO 番兵
              return Container();
              // return _LastIndicator(() {
              //   context.read<TimelineController>().loadNext();
              // });
            }
            if(index < items.length){
              final item = items[index];
              return Card(
                child: ListTile(
                  // onTap: () => Navigator.pushNamed(context, AppRoute.detail.path),
                  onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return const DetailBottomSheet();
                      },
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  title: Text(item.fullName),
                  subtitle: const Text('subtitle'),
                  trailing: const FlutterLogo(),
                ),
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
