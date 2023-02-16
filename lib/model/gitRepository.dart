import 'package:freezed_annotation/freezed_annotation.dart';
part 'gitRepository.freezed.dart';
part 'gitRepository.g.dart';

@freezed
class GitRepository with _$GitRepository{
  const factory GitRepository({
    @Default('') String title,
    @Default('') String ownerIconUrl,
    @Default('') String language,
    @Default(0) int stargazersCount,
    @Default(0) int watchersCount,
    @Default(0) int forksCount,
    @Default(0) int issuesCount,
  }) = _GitRepository;
  factory GitRepository.fromJson(Map<String, dynamic> json) => _$GitRepositoryFromJson(json);
}