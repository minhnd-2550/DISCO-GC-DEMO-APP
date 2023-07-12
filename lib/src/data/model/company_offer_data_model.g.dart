// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_offer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyOfferDataModel _$CompanyOfferDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CompanyOfferDataModel',
      json,
      ($checkedConvert) {
        final val = CompanyOfferDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          industry: $checkedConvert('industry', (v) => v as String?),
          logo: $checkedConvert(
              'logo',
              (v) => v == null
                  ? null
                  : LogoCompanyOfferDataModel.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );
