// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferResponse _$OfferResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OfferResponse',
      json,
      ($checkedConvert) {
        final val = OfferResponse(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => OfferDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );
