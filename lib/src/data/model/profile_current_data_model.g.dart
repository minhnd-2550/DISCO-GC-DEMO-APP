// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_current_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileCurrentDataModel _$$_ProfileCurrentDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileCurrentDataModel(
      id: json['id'] as int?,
      profileAvatar: json['profile_avatar'] == null
          ? null
          : ProfileAvatarDataModel.fromJson(
              json['profile_avatar'] as Map<String, dynamic>),
      firstNameJa: json['first_name_ja'] as String?,
      lastNameJa: json['last_name_ja'] as String?,
      firstNameRomaji: json['first_name_romaji'] as String?,
      lastNameRomaji: json['last_name_romaji'] as String?,
      nickName: json['nick_name'] as String?,
      lastUpdatedProfileAt: json['last_updated_profile_at'] == null
          ? null
          : DateTime.parse(json['last_updated_profile_at'] as String),
      email: json['email'] as String?,
      step: json['step'] as int?,
    );

Map<String, dynamic> _$$_ProfileCurrentDataModelToJson(
        _$_ProfileCurrentDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_avatar': instance.profileAvatar,
      'first_name_ja': instance.firstNameJa,
      'last_name_ja': instance.lastNameJa,
      'first_name_romaji': instance.firstNameRomaji,
      'last_name_romaji': instance.lastNameRomaji,
      'nick_name': instance.nickName,
      'last_updated_profile_at':
          instance.lastUpdatedProfileAt?.toIso8601String(),
      'email': instance.email,
      'step': instance.step,
    };
