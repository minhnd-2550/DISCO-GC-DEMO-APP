import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booth_company_data_model.g.dart';
part 'booth_company_data_model.freezed.dart';

@Freezed(fromJson: true)
class BoothCompanyDataModel with _$BoothCompanyDataModel {
  const factory BoothCompanyDataModel({
    @JsonKey(name: 'official_name') String? officialName,
  }) = _BoothCompanyDataModel;

  factory BoothCompanyDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoothCompanyDataModelFromJson(json);
}
