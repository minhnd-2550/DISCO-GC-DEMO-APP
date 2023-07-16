import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/src/data/model/company_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/detail_offer_data_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'offer_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class OfferDataModel with DataModel implements Equatable {
  final int? id;

  @JsonKey(name: 'contract_expired')
  final bool? contractExpired;
  final bool? applied;

  @JsonKey(name: 'is_read')
  final bool? isRead;

  @JsonKey(name: 'offer_type')
  final String? offerType;

  @JsonKey(name: 'participated_in_video_audition')
  final bool? participatedInVideoAudition;

  @JsonKey(name: 'remain_days')
  final int? remainDays;

  @JsonKey(name: 'send_time')
  final DateTime? sendTime;
  final String? status;
  final DetailOfferDataModel? details;
  final CompanyOfferDataModel? company;

  OfferDataModel(
      {this.id,
      this.contractExpired,
      this.applied,
      this.isRead,
      this.offerType,
      this.participatedInVideoAudition,
      this.remainDays,
      this.sendTime,
      this.status,
      this.details,
      this.company});

  factory OfferDataModel.fromJson(Map<String, dynamic> json) =>
      _$OfferDataModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        contractExpired,
        applied,
        isRead,
        offerType,
        participatedInVideoAudition,
        remainDays,
        sendTime,
        status,
        company,
        details
      ];

  @override
  bool? get stringify => true;
}
