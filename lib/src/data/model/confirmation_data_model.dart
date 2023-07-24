import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';

part 'confirmation_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ConfirmationDataModel with DataModel implements Equatable {
  final bool? status;

  ConfirmationDataModel(this.status);

  factory ConfirmationDataModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmationDataModelFromJson(json);

  @override
  List<Object?> get props => [status];

  @override
  bool? get stringify => true;
}
