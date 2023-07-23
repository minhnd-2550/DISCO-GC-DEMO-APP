// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booth_companies_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoothCompaniesDataModel _$$_BoothCompaniesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_BoothCompaniesDataModel(
      description: json['description'] as String?,
      boothCompanyName: json['booth_company_name'] as String?,
      boothCompany: json['booth_company'] == null
          ? null
          : BoothCompanyDataModel.fromJson(
              json['booth_company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BoothCompaniesDataModelToJson(
        _$_BoothCompaniesDataModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'booth_company_name': instance.boothCompanyName,
      'booth_company': instance.boothCompany,
    };
