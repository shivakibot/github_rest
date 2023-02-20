// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchemeRepository _$SchemeRepositoryFromJson(Map<String, dynamic> json) {
  return _SchemeRepository.fromJson(json);
}

/// @nodoc
mixin _$SchemeRepository {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  SchemeOwner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get issuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeRepositoryCopyWith<SchemeRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeRepositoryCopyWith<$Res> {
  factory $SchemeRepositoryCopyWith(
          SchemeRepository value, $Res Function(SchemeRepository) then) =
      _$SchemeRepositoryCopyWithImpl<$Res, SchemeRepository>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'owner') SchemeOwner owner,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int issuesCount});

  $SchemeOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$SchemeRepositoryCopyWithImpl<$Res, $Val extends SchemeRepository>
    implements $SchemeRepositoryCopyWith<$Res> {
  _$SchemeRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? language = freezed,
    Object? owner = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SchemeOwner,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: null == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchemeOwnerCopyWith<$Res> get owner {
    return $SchemeOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SchemeRepositoryCopyWith<$Res>
    implements $SchemeRepositoryCopyWith<$Res> {
  factory _$$_SchemeRepositoryCopyWith(
          _$_SchemeRepository value, $Res Function(_$_SchemeRepository) then) =
      __$$_SchemeRepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'owner') SchemeOwner owner,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int issuesCount});

  @override
  $SchemeOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_SchemeRepositoryCopyWithImpl<$Res>
    extends _$SchemeRepositoryCopyWithImpl<$Res, _$_SchemeRepository>
    implements _$$_SchemeRepositoryCopyWith<$Res> {
  __$$_SchemeRepositoryCopyWithImpl(
      _$_SchemeRepository _value, $Res Function(_$_SchemeRepository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? language = freezed,
    Object? owner = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_$_SchemeRepository(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SchemeOwner,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: null == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchemeRepository implements _SchemeRepository {
  const _$_SchemeRepository(
      {@JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'owner') required this.owner,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.issuesCount});

  factory _$_SchemeRepository.fromJson(Map<String, dynamic> json) =>
      _$$_SchemeRepositoryFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'owner')
  final SchemeOwner owner;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int issuesCount;

  @override
  String toString() {
    return 'SchemeRepository(fullName: $fullName, language: $language, owner: $owner, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, issuesCount: $issuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchemeRepository &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.issuesCount, issuesCount) ||
                other.issuesCount == issuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, language, owner,
      stargazersCount, watchersCount, forksCount, issuesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchemeRepositoryCopyWith<_$_SchemeRepository> get copyWith =>
      __$$_SchemeRepositoryCopyWithImpl<_$_SchemeRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchemeRepositoryToJson(
      this,
    );
  }
}

abstract class _SchemeRepository implements SchemeRepository {
  const factory _SchemeRepository(
          {@JsonKey(name: 'full_name') required final String fullName,
          @JsonKey(name: 'language') required final String? language,
          @JsonKey(name: 'owner') required final SchemeOwner owner,
          @JsonKey(name: 'stargazers_count') required final int stargazersCount,
          @JsonKey(name: 'watchers_count') required final int watchersCount,
          @JsonKey(name: 'forks_count') required final int forksCount,
          @JsonKey(name: 'open_issues_count') required final int issuesCount}) =
      _$_SchemeRepository;

  factory _SchemeRepository.fromJson(Map<String, dynamic> json) =
      _$_SchemeRepository.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'owner')
  SchemeOwner get owner;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get issuesCount;
  @override
  @JsonKey(ignore: true)
  _$$_SchemeRepositoryCopyWith<_$_SchemeRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
