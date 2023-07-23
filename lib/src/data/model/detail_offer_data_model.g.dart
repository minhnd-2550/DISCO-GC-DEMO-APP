// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_offer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailOfferDataModel _$DetailOfferDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'DetailOfferDataModel',
      json,
      ($checkedConvert) {
        final val = DetailOfferDataModel(
          subject: $checkedConvert('subject', (v) => v as String?),
          userPosition: $checkedConvert('user_position', (v) => v as String?),
          userName: $checkedConvert('user_name', (v) => v as String?),
          interestedPoint:
              $checkedConvert('interested_point', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          offerReason: $checkedConvert('offer_reason', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'userPosition': 'user_position',
        'userName': 'user_name',
        'interestedPoint': 'interested_point',
        'offerReason': 'offer_reason'
      },
    );
