import 'package:freezed_annotation/freezed_annotation.dart';
part 'schema_owner.freezed.dart';
part 'schema_owner.g.dart';

/// github Rest API
/// search-repositories Response の owner
/// Response schema は以下のAPI仕様に準拠。
/// 参照:[https://docs.github.com/ja/rest/search?apiVersion=2022-11-28#search-repositories]
@freezed
class SchemeOwner with _$SchemeOwner{
  const factory SchemeOwner({
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _SchemeOwner;
  factory SchemeOwner.fromJson(Map<String, dynamic> json) => _$SchemeOwnerFromJson(json);
}