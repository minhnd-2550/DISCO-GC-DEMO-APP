// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seminar_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeminarDataModel _$$_SeminarDataModelFromJson(Map<String, dynamic> json) =>
    _$_SeminarDataModel(
      onlineSeminar: json['online_seminar'] == null
          ? null
          : OnlineSeminarDataModel.fromJson(
              json['online_seminar'] as Map<String, dynamic>),
      boothCompanies: (json['booth_companies'] as List<dynamic>?)
          ?.map((e) =>
              BoothCompaniesDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeminarDataModelToJson(_$_SeminarDataModel instance) =>
    <String, dynamic>{
      'online_seminar': instance.onlineSeminar,
      'booth_companies': instance.boothCompanies,
    };
