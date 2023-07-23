// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_contact_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreContactDataModel _$PreContactDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PreContactDataModel',
      json,
      ($checkedConvert) {
        final val = PreContactDataModel(
          deadline: $checkedConvert('deadline', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as int?),
          isRead: $checkedConvert('is_read', (v) => v as bool?),
          remainDays: $checkedConvert('remain_days', (v) => v as int?),
          status: $checkedConvert('status', (v) => v as String?),
          preContact: $checkedConvert(
              'pre_contact',
              (v) => v == null
                  ? null
                  : DetailOfferDataModel.fromJson(v as Map<String, dynamic>)),
          company: $checkedConvert(
              'company',
              (v) => v == null
                  ? null
                  : CompanyOfferDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'isRead': 'is_read',
        'remainDays': 'remain_days',
        'preContact': 'pre_contact'
      },
    );
