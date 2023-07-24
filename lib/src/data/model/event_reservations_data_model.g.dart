// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_reservations_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventReservationsDataModel _$$_EventReservationsDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_EventReservationsDataModel(
      name: json['name'] as String?,
      content: json['content'] as String?,
      username: json['event_reservations'] as String?,
      hasOpeningSeminar: json['has_opening_seminar'] as bool?,
    );

Map<String, dynamic> _$$_EventReservationsDataModelToJson(
        _$_EventReservationsDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'event_reservations': instance.username,
      'has_opening_seminar': instance.hasOpeningSeminar,
    };
