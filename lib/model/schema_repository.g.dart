// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchemeRepository _$$_SchemeRepositoryFromJson(Map<String, dynamic> json) =>
    _$_SchemeRepository(
      fullName: json['full_name'] as String,
      language: json['language'] as String?,
      owner: SchemeOwner.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      forksCount: json['forks_count'] as int,
      issuesCount: json['open_issues_count'] as int,
    );

Map<String, dynamic> _$$_SchemeRepositoryToJson(_$_SchemeRepository instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'language': instance.language,
      'owner': instance.owner,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.issuesCount,
    };
