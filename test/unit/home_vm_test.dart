import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_rest/model/schema_repository.dart';
import 'package:github_rest/repository/github_rest.dart';
import 'package:github_rest/viewModel/common.dart';
import 'package:github_rest/viewModel/home_vm.dart';
import 'github_rest_test.mocks.dart';

void main() {
  final mockSearchProvider = StateProvider<String>((ref) => 'github_rest');
  group(const HomeState().runtimeType, () {
    // 初期値が AsyncValue<List<SchemeRepository>>.loading()であるか
    test('init Loading', () {
      final container = ProviderContainer(
        overrides: [
          repositoryProvider.overrideWithValue(MockGithubRest()),
        ],
      );
      final actual = container.read(homeStateNotifier);
      const matcher = AsyncValue<List<SchemeRepository>>.loading();
      expect(actual, matcher);
    });
    // 実際にREST APIをコールして AsyncValueとして出力されているか
    test('fetch myRepo', () async {
      final container = ProviderContainer(
        overrides: [
          repositoryProvider.overrideWithValue(GithubRest(isTest: true)),
          searchProvider.overrideWith((ref) => ref.read(mockSearchProvider)),
        ],
      );
      final vm = container.read(homeStateNotifier.notifier);
      vm.searchRepository();
      container.read(homeStateNotifier).when(
        data: (data) {
          expect(data.length, 1);
          final repo = data[0];
          expect(repo.fullName, 'shivakibot/github_rest');
          expect(repo.owner.avatarUrl,
              'https://avatars.githubusercontent.com/u/54189261?v=4');
          expect(repo.language, 'Dart');
          expect(repo.stargazersCount, 0);
          expect(repo.watchersCount, 0);
          expect(repo.forksCount, 0);
          expect(repo.issuesCount, 0);
        },
        error: (error, stackTrace) {
          fail('when error');
        },
        loading: () {
          // 処理を継続
        },
      );
    });
    // searchRepository()を実行し、15件のgithub repository情報を出力できているか
    // フォーマットチェックは github_rest_testで行っている為、対象外
    test('fetch first page(15 repository)', () async {
      final container = ProviderContainer(
        overrides: [
          searchProvider.overrideWith((ref) => ref.read(mockSearchProvider)),
        ],
      );
      final vm = container.read(homeStateNotifier.notifier);
      await vm.searchRepository();
      container.read(homeStateNotifier).when(
        data: (data) {
          debugPrint(data.toString());
          expect(data.length, 15);
        },
        error: (error, stackTrace) {
          fail('when error');
        },
        loading: () {
          // 処理を継続
        },
      );
    });
    // searchRepository()実行後。addPage()を実行し、
    // 合計30件のgithub repository情報を出力できているか
    // フォーマットチェックは github_rest_testで行っている為、対象外
    test('fetch add next page(30 repository)', () async {
      final container = ProviderContainer(
        overrides: [
          searchProvider.overrideWith((ref) => ref.read(mockSearchProvider)),
        ],
      );
      final vm = container.read(homeStateNotifier.notifier);
      await vm.searchRepository();
      container.read(homeStateNotifier).when(
        data: (data) {
          debugPrint(data.toString());
        },
        error: (error, stackTrace) {
          fail('when error');
        },
        loading: () {
          // 処理を継続
        },
      );
      await vm.addPage();
      container.read(homeStateNotifier).when(
        data: (data) {
          debugPrint(data.toString());
          expect(data.length, 30);
        },
        error: (error, stackTrace) {
          fail('when error');
        },
        loading: () {
          // 処理を継続
        },
      );
    });
  });
}
