// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitRepository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitRepository _$$_GitRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GitRepository(
      title: json['title'] as String? ?? '',
      ownerIconUrl: json['ownerIconUrl'] as String? ?? '',
      language: json['language'] as String? ?? '',
      stargazersCount: json['stargazersCount'] as int? ?? 0,
      watchersCount: json['watchersCount'] as int? ?? 0,
      forksCount: json['forksCount'] as int? ?? 0,
      issuesCount: json['issuesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GitRepositoryToJson(_$_GitRepository instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ownerIconUrl': instance.ownerIconUrl,
      'language': instance.language,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'forksCount': instance.forksCount,
      'issuesCount': instance.issuesCount,
    };
