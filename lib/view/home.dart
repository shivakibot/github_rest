import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/error/githubServerError.dart';
import 'package:github_rest/viewModel/home_vm.dart';
import 'component/search_action_bar.dart';
import 'component/setting_drawer.dart';
import 'detail.dart';

class Home extends ConsumerStatefulWidget{
  const Home({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends ConsumerState<Home> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent * 0.95) {
        await ref.read(homeStateNotifier.notifier).addPage();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// textFieldの focusを外しやすくする為に
    /// textField以外のところをタップする unfocus()するよう設定
    final FocusNode focusNode = FocusNode();
    final asyncValue = ref.watch(homeStateNotifier);
    return Focus(
      focusNode: focusNode,
        child: GestureDetector(
          onTap: () => focusNode.unfocus(),
          child: SafeArea(
            child: Scaffold(
              key: const ValueKey('home'),
              drawer: const SettingDrawer(),
              appBar: const SearchActionBar(
                fromGreeting: false,
              ),
              body: asyncValue.when(
                data: (repositories) {
                  /// 検索結果が0件
                  if(repositories.isEmpty){
                    return Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/2,
                        child: const Text(
                          '検索結果が\n見つかりませんでした',
                          textAlign: TextAlign.center,
                          key: ValueKey('no data'),
                        ),
                      )
                    );
                  }
                  /// 検索結果が1件以上
                  return ListView.builder(
                    key: const ValueKey('display data'),
                    controller: _scrollController,
                    itemCount: repositories.length + 1,
                    itemBuilder: (context, index) {
                      if (index == repositories.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(),
                            ),
                          )
                        );
                      }
                      final item = repositories[index];
                      return Card(
                        child: ListTile(
                          onTap: () {
                            /// GestureDetectorの子 widgetにある onTap()は優先されるはずなので、
                            /// 検索窓編集中にカードを触るケースについても unfocus()するよう設定
                            focusNode.unfocus();
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return DetailBottomSheet(repo: item,);
                              },
                            );
                          },
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            child: CachedNetworkImage(
                              imageUrl: item.owner.avatarUrl,
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                            ),
                          ),
                          title: Text(item.fullName),
                        ),
                      );
                    },
                  );
                },
                /// エラー表示
                error: (error, stackTrace) {
                  String message = '';
                  if(error.runtimeType == GithubServerError){
                    final exception = error as GithubServerError;
                    message = exception.errorCode;
                  }
                  return Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text(
                        'Github で\nエラーが発生しました\n$message',
                        textAlign: TextAlign.center,
                        key: const ValueKey('async error'),
                      ),
                    ),
                  );
                },
                /// ローディング表示
                loading: () {
                  return Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/5,
                      height: MediaQuery.of(context).size.width/5,
                      child: const CircularProgressIndicator(
                        key: ValueKey('async loading'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        )
    );
  }
}