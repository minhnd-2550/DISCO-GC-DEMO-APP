import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/model/booth_company_data_model.dart';

part 'booth_companies_data_model.g.dart';
part 'booth_companies_data_model.freezed.dart';

@Freezed(fromJson: true)
class BoothCompaniesDataModel with _$BoothCompaniesDataModel {
  const factory BoothCompaniesDataModel({
    String? description,
    @JsonKey(name: 'booth_company_name') String? boothCompanyName,
    @JsonKey(name: 'booth_company') BoothCompanyDataModel? boothCompany,
  }) = _BoothCompaniesDataModel;

  factory BoothCompaniesDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoothCompaniesDataModelFromJson(json);
}
