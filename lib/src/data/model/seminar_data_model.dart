import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_clean_architecture/src/data/model/online_seminar_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/booth_companies_data_model.dart';

part 'seminar_data_model.g.dart';
part 'seminar_data_model.freezed.dart';

@Freezed(fromJson: true)
class SeminarDataModel with _$SeminarDataModel {
  const factory SeminarDataModel({
    @JsonKey(name: 'online_seminar') OnlineSeminarDataModel? onlineSeminar,
    @JsonKey(name: 'booth_companies')
        List<BoothCompaniesDataModel>? boothCompanies,
  }) = _SeminarDataModel;

  factory SeminarDataModel.fromJson(Map<String, dynamic> json) =>
      _$SeminarDataModelFromJson(json);
}
