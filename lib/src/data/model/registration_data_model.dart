import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'registration_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class RegistrationDataModel with DataModel implements Equatable {
  final bool? status;

  RegistrationDataModel(this.status);

  factory RegistrationDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDataModelFromJson(json);

  @override
  List<Object?> get props => [status];

  @override
  bool? get stringify => true;
}
