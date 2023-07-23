// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_current_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCurrentResponse _$ProfileCurrentResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ProfileCurrentResponse',
      json,
      ($checkedConvert) {
        final val = ProfileCurrentResponse(
          id: $checkedConvert('id', (v) => v as int?),
          profileAvatar: $checkedConvert(
              'profile_avatar',
              (v) => v == null
                  ? null
                  : ProfileAvatarDataModel.fromJson(v as Map<String, dynamic>)),
          firstNameJa: $checkedConvert('first_name_ja', (v) => v as String?),
          lastNameJa: $checkedConvert('last_name_ja', (v) => v as String?),
          firstNameRomaji:
              $checkedConvert('first_name_romaji', (v) => v as String?),
          lastNameRomaji:
              $checkedConvert('last_name_romaji', (v) => v as String?),
          nickName: $checkedConvert('nick_name', (v) => v as String?),
          lastUpdatedProfileAt: $checkedConvert('last_updated_profile_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          email: $checkedConvert('email', (v) => v as String?),
          step: $checkedConvert('step', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'profileAvatar': 'profile_avatar',
        'firstNameJa': 'first_name_ja',
        'lastNameJa': 'last_name_ja',
        'firstNameRomaji': 'first_name_romaji',
        'lastNameRomaji': 'last_name_romaji',
        'nickName': 'nick_name',
        'lastUpdatedProfileAt': 'last_updated_profile_at'
      },
    );
