import 'dart:ffi';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_seminar_data_model.g.dart';
part 'online_seminar_data_model.freezed.dart';

@Freezed(fromJson: true)
class OnlineSeminarDataModel with _$OnlineSeminarDataModel {
  const factory OnlineSeminarDataModel({
    String? name,
    String? content,
    @JsonKey(name: 'period_of_exhibition') String? periodOfExhibition,
  }) = _OnlineSeminarDataModel;

  factory OnlineSeminarDataModel.fromJson(Map<String, dynamic> json) =>
      _$OnlineSeminarDataModelFromJson(json);
}