import 'package:freezed_annotation/freezed_annotation.dart';
part 'gitRepository.freezed.dart';
part 'gitRepository.g.dart';

@freezed
class GitRepository with _$GitRepository{
  const factory GitRepository({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'avatar_url') @Default('') String ownerIconUrl,
    @JsonKey(name: 'language') @Default('') String language,
    @JsonKey(name: 'stargazers_count') @Default(0) int stargazersCount,
    @JsonKey(name: 'watchers_count') @Default(0) int watchersCount,
    @JsonKey(name: 'forks_count') @Default(0) int forksCount,
    @JsonKey(name: 'open_issues_count') @Default(0) int issuesCount,
  }) = _GitRepository;
  factory GitRepository.fromJson(Map<String, dynamic> json) => _$GitRepositoryFromJson(json);
}