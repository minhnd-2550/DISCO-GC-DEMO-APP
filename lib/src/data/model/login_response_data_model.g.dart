// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDataModel _$$_LoginResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseDataModel(
      id: json['id'] as int?,
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDataModelToJson(
        _$_LoginResponseDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
