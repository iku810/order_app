import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.g.dart';

@JsonSerializable()
class TokenData {
  const TokenData({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.scope,
  });

  factory TokenData.fromJson(Map<String, dynamic> json) =>
      _$TokenDataFromJson(json);

  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  final String? scope;

  Map<String, dynamic> toJson() => _$TokenDataToJson(this);
}
