// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopDataModel _$$_TopDataModelFromJson(Map<String, dynamic> json) =>
    _$_TopDataModel(
      eventReservations: (json['event_reservations'] as List<dynamic>?)
          ?.map((e) =>
              EventReservationsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopDataModelToJson(_$_TopDataModel instance) =>
    <String, dynamic>{
      'event_reservations': instance.eventReservations,
    };
