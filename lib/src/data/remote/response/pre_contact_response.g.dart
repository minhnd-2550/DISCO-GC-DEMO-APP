// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_contact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreContactResponse _$PreContactResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PreContactResponse',
      json,
      ($checkedConvert) {
        final val = PreContactResponse(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      PreContactDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );
