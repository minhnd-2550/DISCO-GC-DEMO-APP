import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_avatar_data_model.dart';
part 'profile_current_response.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ProfileCurrentResponse {
  final int? id;

  @JsonKey(name: 'profile_avatar')
  final ProfileAvatarDataModel? profileAvatar;

  @JsonKey(name: 'first_name_ja')
  final String? firstNameJa;

  @JsonKey(name: 'last_name_ja')
  final String? lastNameJa;

  @JsonKey(name: 'first_name_romaji')
  final String? firstNameRomaji;

  @JsonKey(name: 'last_name_romaji')
  final String? lastNameRomaji;

  @JsonKey(name: 'nick_name')
  final String? nickName;

  @JsonKey(name: 'last_updated_profile_at')
  final DateTime? lastUpdatedProfileAt;

  final String? email;

  final int? step;

  ProfileCurrentResponse({
    this.id,
    this.profileAvatar,
    this.firstNameJa,
    this.lastNameJa,
    this.firstNameRomaji,
    this.lastNameRomaji,
    this.nickName,
    this.lastUpdatedProfileAt,
    this.email,
    this.step,
});

  factory ProfileCurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileCurrentResponseFromJson(json);
}
