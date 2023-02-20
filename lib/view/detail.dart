import 'package:flutter/material.dart';
import '../model/schema_repository.dart';
import '../model/schema_owner.dart';

const String fullName = 'test';
const String? ownerIconUrl = null;
const String? language = null;
const int stargazersCount = 0;
const int watchersCount = 1;
const int forksCount = 2;
const int issuesCount = 3;
const SchemeRepository repo = SchemeRepository(
    fullName: fullName,
    owner: SchemeOwner(avatarUrl: ''),
    language: language,
    stargazersCount: stargazersCount,
    watchersCount: watchersCount,
    forksCount: forksCount,
    issuesCount: issuesCount
);

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              ListTile(
                /// TODO networkImage avatarUrl
                leading: const CircleAvatar(
                  child: Text('O'),
                ),
                title: Text(repo.fullName),
              ),
              ListTile(
                leading: const Text('Languages'),
                title: repo.language != null
                    ? Card(child: Text(repo.language ?? ''))
                    : Container(),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.star_border),
                ),
                title: const Text('star'),
                trailing: Text(repo.stargazersCount.toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.visibility),
                ),
                title: const Text('watch'),
                trailing: Text(repo.watchersCount.toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.fork_right),
                ),
                title: const Text('fork'),
                trailing: Text(repo.forksCount.toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.adjust),
                ),
                title: const Text('issues'),
                trailing: Text(repo.issuesCount.toString()),
              ),
            ],
          ),
        );
      },
    );
  }
}
