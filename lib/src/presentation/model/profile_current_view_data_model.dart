import 'package:flutter_clean_architecture/src/data/model/profile_avatar_data_model.dart';
import 'package:flutter_clean_architecture/src/data/model/profile_current_data_model.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item.dart';
import 'package:flutter_clean_architecture/src/presentation/base/model_item_mapper.dart';

class ProfileCurrentViewDataModel with ModelItem {
  final int? id;
  final ProfileAvatarDataModel? profileAvatar;
  final String? firstNameJa;
  final String? lastNameJa;
  final String? firstNameRomaji;
  final String? lastNameRomaji;
  final String? nickName;
  final DateTime? lastUpdatedProfileAt;
  final String? email;
  final int? step;

  ProfileCurrentViewDataModel(
      {this.id,
      this.profileAvatar,
      this.firstNameJa,
      this.lastNameJa,
      this.firstNameRomaji,
      this.lastNameRomaji,
      this.nickName,
      this.lastUpdatedProfileAt,
      this.email,
      this.step});
}

class ProfileCurrentViewDataModelMapper extends ModelItemMapper<
    ProfileCurrentDataModel, ProfileCurrentViewDataModel> {
  @override
  ProfileCurrentViewDataModel mapperTo(ProfileCurrentDataModel data) {
    return ProfileCurrentViewDataModel(
      id: data.id,
      profileAvatar: data.profileAvatar,
      firstNameJa: data.firstNameJa,
      lastNameJa: data.lastNameJa,
      firstNameRomaji: data.firstNameRomaji,
      lastNameRomaji: data.lastNameRomaji,
      nickName: data.nickName,
      lastUpdatedProfileAt: data.lastUpdatedProfileAt,
      email: data.email,
      step: data.step,
    );
  }
}
