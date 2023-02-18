import 'package:freezed_annotation/freezed_annotation.dart';
part 'schema_repository.freezed.dart';
part 'schema_repository.g.dart';

/// github Rest API の Response Parser
/// Response schema は以下のAPI仕様に準拠。
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
@freezed
class SchemeRepository with _$SchemeRepository{
  const factory SchemeRepository({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'avatar_url') required String? ownerIconUrl,
    @JsonKey(name: 'language') required String? language,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
    @JsonKey(name: 'open_issues_count') required int issuesCount,
  }) = _SchemeRepository;
  factory SchemeRepository.fromJson(Map<String, dynamic> json) => _$SchemeRepositoryFromJson(json);
}