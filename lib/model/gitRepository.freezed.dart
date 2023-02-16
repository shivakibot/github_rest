// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gitRepository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitRepository _$GitRepositoryFromJson(Map<String, dynamic> json) {
  return _GitRepository.fromJson(json);
}

/// @nodoc
mixin _$GitRepository {
  String get title => throw _privateConstructorUsedError;
  String get ownerIconUrl => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;
  int get watchersCount => throw _privateConstructorUsedError;
  int get forksCount => throw _privateConstructorUsedError;
  int get issuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitRepositoryCopyWith<GitRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitRepositoryCopyWith<$Res> {
  factory $GitRepositoryCopyWith(
          GitRepository value, $Res Function(GitRepository) then) =
      _$GitRepositoryCopyWithImpl<$Res, GitRepository>;
  @useResult
  $Res call(
      {String title,
      String ownerIconUrl,
      String language,
      int stargazersCount,
      int watchersCount,
      int forksCount,
      int issuesCount});
}

/// @nodoc
class _$GitRepositoryCopyWithImpl<$Res, $Val extends GitRepository>
    implements $GitRepositoryCopyWith<$Res> {
  _$GitRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ownerIconUrl = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ownerIconUrl: null == ownerIconUrl
          ? _value.ownerIconUrl
          : ownerIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$_GitRepositoryCopyWith<$Res>
    implements $GitRepositoryCopyWith<$Res> {
  factory _$$_GitRepositoryCopyWith(
          _$_GitRepository value, $Res Function(_$_GitRepository) then) =
      __$$_GitRepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String ownerIconUrl,
      String language,
      int stargazersCount,
      int watchersCount,
      int forksCount,
      int issuesCount});
}

/// @nodoc
class __$$_GitRepositoryCopyWithImpl<$Res>
    extends _$GitRepositoryCopyWithImpl<$Res, _$_GitRepository>
    implements _$$_GitRepositoryCopyWith<$Res> {
  __$$_GitRepositoryCopyWithImpl(
      _$_GitRepository _value, $Res Function(_$_GitRepository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? ownerIconUrl = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_$_GitRepository(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ownerIconUrl: null == ownerIconUrl
          ? _value.ownerIconUrl
          : ownerIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_GitRepository implements _GitRepository {
  const _$_GitRepository(
      {this.title = '',
      this.ownerIconUrl = '',
      this.language = '',
      this.stargazersCount = 0,
      this.watchersCount = 0,
      this.forksCount = 0,
      this.issuesCount = 0});

  factory _$_GitRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GitRepositoryFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String ownerIconUrl;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int stargazersCount;
  @override
  @JsonKey()
  final int watchersCount;
  @override
  @JsonKey()
  final int forksCount;
  @override
  @JsonKey()
  final int issuesCount;

  @override
  String toString() {
    return 'GitRepository(title: $title, ownerIconUrl: $ownerIconUrl, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, issuesCount: $issuesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitRepository &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ownerIconUrl, ownerIconUrl) ||
                other.ownerIconUrl == ownerIconUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
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
  int get hashCode => Object.hash(runtimeType, title, ownerIconUrl, language,
      stargazersCount, watchersCount, forksCount, issuesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitRepositoryCopyWith<_$_GitRepository> get copyWith =>
      __$$_GitRepositoryCopyWithImpl<_$_GitRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitRepositoryToJson(
      this,
    );
  }
}

abstract class _GitRepository implements GitRepository {
  const factory _GitRepository(
      {final String title,
      final String ownerIconUrl,
      final String language,
      final int stargazersCount,
      final int watchersCount,
      final int forksCount,
      final int issuesCount}) = _$_GitRepository;

  factory _GitRepository.fromJson(Map<String, dynamic> json) =
      _$_GitRepository.fromJson;

  @override
  String get title;
  @override
  String get ownerIconUrl;
  @override
  String get language;
  @override
  int get stargazersCount;
  @override
  int get watchersCount;
  @override
  int get forksCount;
  @override
  int get issuesCount;
  @override
  @JsonKey(ignore: true)
  _$$_GitRepositoryCopyWith<_$_GitRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
