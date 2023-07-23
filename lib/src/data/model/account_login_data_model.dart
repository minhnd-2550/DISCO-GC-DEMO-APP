import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_login_data_model.g.dart';
part 'account_login_data_model.freezed.dart';

@Freezed(fromJson: true)
class AccountLoginDataModel with _$AccountLoginDataModel {
  const factory AccountLoginDataModel({
    String? email,
    String? password,
  }) = _AccountLoginDataModel;

  factory AccountLoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$AccountLoginDataModelFromJson(json);
}