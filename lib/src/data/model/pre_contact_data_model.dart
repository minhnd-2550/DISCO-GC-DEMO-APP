import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/src/data/model/company_offer_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/detail_offer_data_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'pre_contact_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class PreContactDataModel with DataModel implements Equatable {
  final int? id;

  @JsonKey(name: 'is_read')
  final bool? isRead;
  final String? deadline;

  @JsonKey(name: 'remain_days')
  final int? remainDays;

  final String? status;

  @JsonKey(name: 'pre_contact')
  final DetailOfferDataModel? preContact;
  final CompanyOfferDataModel? company;

  PreContactDataModel(
      {this.deadline,
      this.id,
      this.isRead,
      this.remainDays,
      this.status,
      this.preContact,
      this.company});

  factory PreContactDataModel.fromJson(Map<String, dynamic> json) =>
      _$PreContactDataModelFromJson(json);

  @override
  List<Object?> get props =>
      [id, isRead, remainDays, deadline, status, company, preContact];

  @override
  bool? get stringify => true;
}
