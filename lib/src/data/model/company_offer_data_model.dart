import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/src/data/model/logo_company_offer_data_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/base/data_model.dart';
part 'company_offer_data_model.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class CompanyOfferDataModel with DataModel implements Equatable {
  final int? id;
  final String? name;
  final String? industry;
  final LogoCompanyOfferDataModel? logo;

  CompanyOfferDataModel({this.id, this.name, this.industry, this.logo});

  factory CompanyOfferDataModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyOfferDataModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        industry,
        logo,
      ];

  @override
  bool? get stringify => true;
}
