import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_rest/model/schema_search_repositories.dart';
import 'package:github_rest/repository/github_rest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_rest/viewModel/common.dart';
import '../model/schema_repository.dart';
part 'home_vm.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(1) int page,
    @Default('') String search,
    @Default(0) int selected,
    @Default(false) bool progress,
    @Default(null) List<SchemeRepository>? result,
  }) = _HomeState;
}

final repositoryProvider = Provider<GithubRest>((ref) => GithubRest());
final homeStateNotifier = StateNotifierProvider<HomeStateNotifier, AsyncValue<List<SchemeRepository>>>((ref) {
  return HomeStateNotifier(ref, ref.watch(repositoryProvider));
});

class HomeStateNotifier extends StateNotifier<AsyncValue<List<SchemeRepository>>> {
  final Ref ref;
  final GithubRest repo;
  HomeStateNotifier(this.ref, this.repo):super(const AsyncLoading<List<SchemeRepository>>());

  int _page = 1;
  /// 検索窓の onFieldSubmitted でコール<br>
  /// REST API を新規検索（page=1)として実行
  Future<void> searchRepository() async{
    _page = 1;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async{
      final res = await _callSearchRepository();
      return res.items;
    });
  }

  /// スクロールで末端に到達した場合にコール<br>
  /// REST API を次のページ指定(increment page)として実行
  Future<void> addPage() async{
    if (state == const AsyncLoading<List<SchemeRepository>>().copyWithPrevious(state)) {
      return;
    }
    state = const AsyncLoading<List<SchemeRepository>>().copyWithPrevious(state);
    _page++;
    state = await AsyncValue.guard(() async{
      final res = await _callSearchRepository();
      return [...state.value ?? [], ...res.items];
    });
  }

  Future<SchemeSearchRepositories> _callSearchRepository() async{
    final search = ref.read(searchProvider);
    return await repo.execSearchRepository(search, _page);
  }
}
