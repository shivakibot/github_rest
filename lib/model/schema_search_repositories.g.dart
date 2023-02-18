// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_search_repositories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchemeSearchRepositories _$$_SchemeSearchRepositoriesFromJson(
        Map<String, dynamic> json) =>
    _$_SchemeSearchRepositories(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => SchemeRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SchemeSearchRepositoriesToJson(
        _$_SchemeSearchRepositories instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
