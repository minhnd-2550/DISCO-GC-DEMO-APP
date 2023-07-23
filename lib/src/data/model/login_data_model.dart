import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/model/account_login_data_model.dart';

part 'login_data_model.g.dart';
part 'login_data_model.freezed.dart';

@Freezed(fromJson: true)
class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    AccountLoginDataModel? user,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}