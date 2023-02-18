// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchemeRepository _$$_SchemeRepositoryFromJson(Map<String, dynamic> json) =>
    _$_SchemeRepository(
      name: json['name'] as String,
      ownerIconUrl: json['avatar_url'] as String?,
      language: json['language'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      forksCount: json['forks_count'] as int,
      issuesCount: json['open_issues_count'] as int,
    );

Map<String, dynamic> _$$_SchemeRepositoryToJson(_$_SchemeRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar_url': instance.ownerIconUrl,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.issuesCount,
    };
