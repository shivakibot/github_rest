// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schema_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchemeOwner _$SchemeOwnerFromJson(Map<String, dynamic> json) {
  return _SchemeOwner.fromJson(json);
}

/// @nodoc
mixin _$SchemeOwner {
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchemeOwnerCopyWith<SchemeOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeOwnerCopyWith<$Res> {
  factory $SchemeOwnerCopyWith(
          SchemeOwner value, $Res Function(SchemeOwner) then) =
      _$SchemeOwnerCopyWithImpl<$Res, SchemeOwner>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$SchemeOwnerCopyWithImpl<$Res, $Val extends SchemeOwner>
    implements $SchemeOwnerCopyWith<$Res> {
  _$SchemeOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchemeOwnerCopyWith<$Res>
    implements $SchemeOwnerCopyWith<$Res> {
  factory _$$_SchemeOwnerCopyWith(
          _$_SchemeOwner value, $Res Function(_$_SchemeOwner) then) =
      __$$_SchemeOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$_SchemeOwnerCopyWithImpl<$Res>
    extends _$SchemeOwnerCopyWithImpl<$Res, _$_SchemeOwner>
    implements _$$_SchemeOwnerCopyWith<$Res> {
  __$$_SchemeOwnerCopyWithImpl(
      _$_SchemeOwner _value, $Res Function(_$_SchemeOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$_SchemeOwner(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchemeOwner implements _SchemeOwner {
  const _$_SchemeOwner({@JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$_SchemeOwner.fromJson(Map<String, dynamic> json) =>
      _$$_SchemeOwnerFromJson(json);

  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'SchemeOwner(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchemeOwner &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchemeOwnerCopyWith<_$_SchemeOwner> get copyWith =>
      __$$_SchemeOwnerCopyWithImpl<_$_SchemeOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchemeOwnerToJson(
      this,
    );
  }
}

abstract class _SchemeOwner implements SchemeOwner {
  const factory _SchemeOwner(
          {@JsonKey(name: 'avatar_url') required final String avatarUrl}) =
      _$_SchemeOwner;

  factory _SchemeOwner.fromJson(Map<String, dynamic> json) =
      _$_SchemeOwner.fromJson;

  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SchemeOwnerCopyWith<_$_SchemeOwner> get copyWith =>
      throw _privateConstructorUsedError;
}
