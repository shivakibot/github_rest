// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema_search_repositories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchemeSearchRepositories _$SchemeSearchRepositoriesFromJson(
    Map<String, dynamic> json) {
  return _SchemeSearchRepositories.fromJson(json);
}

/// @nodoc
mixin _$SchemeSearchRepositories {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<SchemeRepository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeSearchRepositoriesCopyWith<SchemeSearchRepositories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeSearchRepositoriesCopyWith<$Res> {
  factory $SchemeSearchRepositoriesCopyWith(SchemeSearchRepositories value,
          $Res Function(SchemeSearchRepositories) then) =
      _$SchemeSearchRepositoriesCopyWithImpl<$Res, SchemeSearchRepositories>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<SchemeRepository> items});
}

/// @nodoc
class _$SchemeSearchRepositoriesCopyWithImpl<$Res,
        $Val extends SchemeSearchRepositories>
    implements $SchemeSearchRepositoriesCopyWith<$Res> {
  _$SchemeSearchRepositoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SchemeRepository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchemeSearchRepositoriesCopyWith<$Res>
    implements $SchemeSearchRepositoriesCopyWith<$Res> {
  factory _$$_SchemeSearchRepositoriesCopyWith(
          _$_SchemeSearchRepositories value,
          $Res Function(_$_SchemeSearchRepositories) then) =
      __$$_SchemeSearchRepositoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<SchemeRepository> items});
}

/// @nodoc
class __$$_SchemeSearchRepositoriesCopyWithImpl<$Res>
    extends _$SchemeSearchRepositoriesCopyWithImpl<$Res,
        _$_SchemeSearchRepositories>
    implements _$$_SchemeSearchRepositoriesCopyWith<$Res> {
  __$$_SchemeSearchRepositoriesCopyWithImpl(_$_SchemeSearchRepositories _value,
      $Res Function(_$_SchemeSearchRepositories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$_SchemeSearchRepositories(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SchemeRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchemeSearchRepositories implements _SchemeSearchRepositories {
  const _$_SchemeSearchRepositories(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      @JsonKey(name: 'items') required final List<SchemeRepository> items})
      : _items = items;

  factory _$_SchemeSearchRepositories.fromJson(Map<String, dynamic> json) =>
      _$$_SchemeSearchRepositoriesFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<SchemeRepository> _items;
  @override
  @JsonKey(name: 'items')
  List<SchemeRepository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SchemeSearchRepositories(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchemeSearchRepositories &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchemeSearchRepositoriesCopyWith<_$_SchemeSearchRepositories>
      get copyWith => __$$_SchemeSearchRepositoriesCopyWithImpl<
          _$_SchemeSearchRepositories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchemeSearchRepositoriesToJson(
      this,
    );
  }
}

abstract class _SchemeSearchRepositories implements SchemeSearchRepositories {
  const factory _SchemeSearchRepositories(
          {@JsonKey(name: 'total_count')
              required final int totalCount,
          @JsonKey(name: 'incomplete_results')
              required final bool incompleteResults,
          @JsonKey(name: 'items')
              required final List<SchemeRepository> items}) =
      _$_SchemeSearchRepositories;

  factory _SchemeSearchRepositories.fromJson(Map<String, dynamic> json) =
      _$_SchemeSearchRepositories.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  @JsonKey(name: 'items')
  List<SchemeRepository> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SchemeSearchRepositoriesCopyWith<_$_SchemeSearchRepositories>
      get copyWith => throw _privateConstructorUsedError;
}
