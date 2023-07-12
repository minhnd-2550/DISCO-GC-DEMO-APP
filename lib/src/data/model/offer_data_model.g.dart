// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferDataModel _$OfferDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OfferDataModel',
      json,
      ($checkedConvert) {
        final val = OfferDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          contractExpired:
              $checkedConvert('contract_expired', (v) => v as bool?),
          applied: $checkedConvert('applied', (v) => v as bool?),
          isRead: $checkedConvert('is_read', (v) => v as bool?),
          offerType: $checkedConvert('offer_type', (v) => v as String?),
          participatedInVideoAudition: $checkedConvert(
              'participated_in_video_audition', (v) => v as bool?),
          remainDays: $checkedConvert('remain_days', (v) => v as int?),
          sendTime: $checkedConvert('send_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String?),
          details: $checkedConvert(
              'details',
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
        'contractExpired': 'contract_expired',
        'isRead': 'is_read',
        'offerType': 'offer_type',
        'participatedInVideoAudition': 'participated_in_video_audition',
        'remainDays': 'remain_days',
        'sendTime': 'send_time'
      },
    );
