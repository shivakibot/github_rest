// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitRepository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitRepository _$$_GitRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GitRepository(
      name: json['name'] as String? ?? '',
      ownerIconUrl: json['avatar_url'] as String? ?? '',
      language: json['language'] as String? ?? '',
      stargazersCount: json['stargazers_count'] as int? ?? 0,
      watchersCount: json['watchers_count'] as int? ?? 0,
      forksCount: json['forks_count'] as int? ?? 0,
      issuesCount: json['open_issues_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GitRepositoryToJson(_$_GitRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar_url': instance.ownerIconUrl,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.issuesCount,
    };
