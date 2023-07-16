import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'detail_offer_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class DetailOfferDataModel with DataModel implements Equatable {
  final String? subject;

  @JsonKey(name: 'user_position')
  final String? userPosition;

  @JsonKey(name: 'user_name')
  final String? userName;

  @JsonKey(name: 'interested_point')
  final String? interestedPoint;

  DetailOfferDataModel(
      {this.subject, this.userPosition, this.userName, this.interestedPoint});

  factory DetailOfferDataModel.fromJson(Map<String, dynamic> json) =>
      _$DetailOfferDataModelFromJson(json);

  @override
  List<Object?> get props => [
        subject,
        userPosition,
        userName,
        interestedPoint,
      ];

  @override
  bool? get stringify => true;
}
