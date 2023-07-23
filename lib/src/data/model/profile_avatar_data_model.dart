import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_avatar_data_model.g.dart';
part 'profile_avatar_data_model.freezed.dart';

@Freezed(fromJson: true)
class ProfileAvatarDataModel with _$ProfileAvatarDataModel {
  const factory ProfileAvatarDataModel({
    String? url,
    @JsonKey(name: 'upload_status') String? uploadStatus,
  }) = _ProfileAvatarDataModel;

  factory ProfileAvatarDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileAvatarDataModelFromJson(json);
}
