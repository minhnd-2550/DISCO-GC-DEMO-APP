import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/model/event_reservations_data_model.dart';

part 'top_data_model.freezed.dart';
part 'top_data_model.g.dart';

@freezed
class TopDataModel with _$TopDataModel {
  const factory TopDataModel({
    @JsonKey(name: 'event_reservations') List<EventReservationsDataModel>? eventReservations,
  }) = _TopDataModel;

  factory TopDataModel.fromJson(Map<String, dynamic> json) => _$TopDataModelFromJson(json);
}
