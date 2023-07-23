import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'registration_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class RegistrationResponse with DataModel {
  final bool? status;

  RegistrationResponse({this.status});
  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);
}
