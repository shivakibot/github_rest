import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_rest/model/schema_repository.dart';
part 'schema_search_repositories.freezed.dart';
part 'schema_search_repositories.g.dart';

/// github Rest API
/// search-repositories Response
/// Response schema は以下のAPI仕様に準拠。
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
@freezed
class SchemeSearchRepositories with _$SchemeSearchRepositories{
  const factory SchemeSearchRepositories({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    @JsonKey(name: 'items') required List<SchemeRepository> items,
  }) = _SchemeSearchRepositories;
  factory SchemeSearchRepositories.fromJson(Map<String, dynamic> json) => _$SchemeSearchRepositoriesFromJson(json);
}