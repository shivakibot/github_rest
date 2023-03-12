import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/schema_repository.dart';

class DetailBottomSheet extends StatelessWidget {
  final SchemeRepository repo;
  const DetailBottomSheet({required this.repo, super.key});
  static final formatter = NumberFormat("#,###");
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: CachedNetworkImage(
                    imageUrl: repo.owner.avatarUrl,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                  ),
                ),
                title: Text(repo.fullName),
              ),
              ListTile(
                title: repo.language != null
                    ? Text('Languages ${repo.language ?? ''}')
                    : Container(),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.star_border),
                ),
                title: const Text('star'),
                trailing: Text(_formatCount(repo.stargazersCount).toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.visibility),
                ),
                title: const Text('watch'),
                trailing: Text(_formatCount(repo.watchersCount).toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.fork_right),
                ),
                title: const Text('fork'),
                trailing: Text(_formatCount(repo.forksCount).toString()),
              ),
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.adjust),
                ),
                title: const Text('issues'),
                trailing: Text(_formatCount(repo.issuesCount).toString()),
              ),
            ],
          ),
        );
      },
    );
  }

  static String _formatCount(int count){
    return formatter.format(count);
  }
}
