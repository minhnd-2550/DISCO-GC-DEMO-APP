import 'package:flutter_clean_architecture/src/data/model/profile_avatar_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_current_data_model.g.dart';
part 'profile_current_data_model.freezed.dart';

@Freezed(fromJson: true)
class ProfileCurrentDataModel with _$ProfileCurrentDataModel {
  const factory ProfileCurrentDataModel({
    int? id,
    @JsonKey(name: 'profile_avatar') ProfileAvatarDataModel? profileAvatar,
    @JsonKey(name: 'first_name_ja') String? firstNameJa,
    @JsonKey(name: 'last_name_ja') String? lastNameJa,
    @JsonKey(name: 'first_name_romaji') String? firstNameRomaji,
    @JsonKey(name: 'last_name_romaji') String? lastNameRomaji,
    @JsonKey(name: 'nick_name') String? nickName,
    @JsonKey(name: 'last_updated_profile_at') DateTime? lastUpdatedProfileAt,
    String? email,
    int? step,
  }) = _ProfileCurrentDataModel;

  factory ProfileCurrentDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileCurrentDataModelFromJson(json);
}
