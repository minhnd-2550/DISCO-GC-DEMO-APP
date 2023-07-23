// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_seminar_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnlineSeminarDataModel _$$_OnlineSeminarDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_OnlineSeminarDataModel(
      name: json['name'] as String?,
      content: json['content'] as String?,
      periodOfExhibition: json['period_of_exhibition'] as String?,
    );

Map<String, dynamic> _$$_OnlineSeminarDataModelToJson(
        _$_OnlineSeminarDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'period_of_exhibition': instance.periodOfExhibition,
    };
