import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_data_model.g.dart';
part 'login_response_data_model.freezed.dart';

@Freezed(fromJson: true)
class LoginResponseDataModel with _$LoginResponseDataModel {
  const factory LoginResponseDataModel({
    int? id,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _LoginResponseDataModel;

  factory LoginResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataModelFromJson(json);
}