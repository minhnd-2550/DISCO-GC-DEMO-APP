import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'logo_company_offer_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class LogoCompanyOfferDataModel with DataModel implements Equatable {
  final String? url;
  final String? status;

  LogoCompanyOfferDataModel({this.url, this.status});

  factory LogoCompanyOfferDataModel.fromJson(Map<String, dynamic> json) =>
      _$LogoCompanyOfferDataModelFromJson(json);

  @override
  List<Object?> get props => [
        url,
        status,
      ];

  @override
  bool? get stringify => true;
}
