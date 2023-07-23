// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDataModel _$$_LoginDataModelFromJson(Map<String, dynamic> json) =>
    _$_LoginDataModel(
      user: json['user'] == null
          ? null
          : AccountLoginDataModel.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginDataModelToJson(_$_LoginDataModel instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
