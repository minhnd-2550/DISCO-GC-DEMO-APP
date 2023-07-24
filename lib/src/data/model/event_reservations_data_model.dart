import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_reservations_data_model.freezed.dart';
part 'event_reservations_data_model.g.dart';

@freezed
class EventReservationsDataModel with _$EventReservationsDataModel {
  const factory EventReservationsDataModel({
    String? name,
    String? content,
    @JsonKey(name: 'event_reservations') String? username,
    @JsonKey(name: 'has_opening_seminar') bool? hasOpeningSeminar,
  }) = _EventReservationsDataModel;

  factory EventReservationsDataModel.fromJson(Map<String, dynamic> json) => _$EventReservationsDataModelFromJson(json);
}
