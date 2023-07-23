// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_current_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileCurrentDataModel _$ProfileCurrentDataModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileCurrentDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileCurrentDataModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_avatar')
  ProfileAvatarDataModel? get profileAvatar =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_ja')
  String? get firstNameJa => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_ja')
  String? get lastNameJa => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_romaji')
  String? get firstNameRomaji => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_romaji')
  String? get lastNameRomaji => throw _privateConstructorUsedError;
  @JsonKey(name: 'nick_name')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_profile_at')
  DateTime? get lastUpdatedProfileAt => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCurrentDataModelCopyWith<ProfileCurrentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCurrentDataModelCopyWith<$Res> {
  factory $ProfileCurrentDataModelCopyWith(ProfileCurrentDataModel value,
          $Res Function(ProfileCurrentDataModel) then) =
      _$ProfileCurrentDataModelCopyWithImpl<$Res, ProfileCurrentDataModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'profile_avatar') ProfileAvatarDataModel? profileAvatar,
      @JsonKey(name: 'first_name_ja') String? firstNameJa,
      @JsonKey(name: 'last_name_ja') String? lastNameJa,
      @JsonKey(name: 'first_name_romaji') String? firstNameRomaji,
      @JsonKey(name: 'last_name_romaji') String? lastNameRomaji,
      @JsonKey(name: 'nick_name') String? nickName,
      @JsonKey(name: 'last_updated_profile_at') DateTime? lastUpdatedProfileAt,
      String? email,
      int? step});

  $ProfileAvatarDataModelCopyWith<$Res>? get profileAvatar;
}

/// @nodoc
class _$ProfileCurrentDataModelCopyWithImpl<$Res,
        $Val extends ProfileCurrentDataModel>
    implements $ProfileCurrentDataModelCopyWith<$Res> {
  _$ProfileCurrentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profileAvatar = freezed,
    Object? firstNameJa = freezed,
    Object? lastNameJa = freezed,
    Object? firstNameRomaji = freezed,
    Object? lastNameRomaji = freezed,
    Object? nickName = freezed,
    Object? lastUpdatedProfileAt = freezed,
    Object? email = freezed,
    Object? step = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profileAvatar: freezed == profileAvatar
          ? _value.profileAvatar
          : profileAvatar // ignore: cast_nullable_to_non_nullable
              as ProfileAvatarDataModel?,
      firstNameJa: freezed == firstNameJa
          ? _value.firstNameJa
          : firstNameJa // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameJa: freezed == lastNameJa
          ? _value.lastNameJa
          : lastNameJa // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameRomaji: freezed == firstNameRomaji
          ? _value.firstNameRomaji
          : firstNameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameRomaji: freezed == lastNameRomaji
          ? _value.lastNameRomaji
          : lastNameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedProfileAt: freezed == lastUpdatedProfileAt
          ? _value.lastUpdatedProfileAt
          : lastUpdatedProfileAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileAvatarDataModelCopyWith<$Res>? get profileAvatar {
    if (_value.profileAvatar == null) {
      return null;
    }

    return $ProfileAvatarDataModelCopyWith<$Res>(_value.profileAvatar!,
        (value) {
      return _then(_value.copyWith(profileAvatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCurrentDataModelCopyWith<$Res>
    implements $ProfileCurrentDataModelCopyWith<$Res> {
  factory _$$_ProfileCurrentDataModelCopyWith(_$_ProfileCurrentDataModel value,
          $Res Function(_$_ProfileCurrentDataModel) then) =
      __$$_ProfileCurrentDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'profile_avatar') ProfileAvatarDataModel? profileAvatar,
      @JsonKey(name: 'first_name_ja') String? firstNameJa,
      @JsonKey(name: 'last_name_ja') String? lastNameJa,
      @JsonKey(name: 'first_name_romaji') String? firstNameRomaji,
      @JsonKey(name: 'last_name_romaji') String? lastNameRomaji,
      @JsonKey(name: 'nick_name') String? nickName,
      @JsonKey(name: 'last_updated_profile_at') DateTime? lastUpdatedProfileAt,
      String? email,
      int? step});

  @override
  $ProfileAvatarDataModelCopyWith<$Res>? get profileAvatar;
}

/// @nodoc
class __$$_ProfileCurrentDataModelCopyWithImpl<$Res>
    extends _$ProfileCurrentDataModelCopyWithImpl<$Res,
        _$_ProfileCurrentDataModel>
    implements _$$_ProfileCurrentDataModelCopyWith<$Res> {
  __$$_ProfileCurrentDataModelCopyWithImpl(_$_ProfileCurrentDataModel _value,
      $Res Function(_$_ProfileCurrentDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profileAvatar = freezed,
    Object? firstNameJa = freezed,
    Object? lastNameJa = freezed,
    Object? firstNameRomaji = freezed,
    Object? lastNameRomaji = freezed,
    Object? nickName = freezed,
    Object? lastUpdatedProfileAt = freezed,
    Object? email = freezed,
    Object? step = freezed,
  }) {
    return _then(_$_ProfileCurrentDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profileAvatar: freezed == profileAvatar
          ? _value.profileAvatar
          : profileAvatar // ignore: cast_nullable_to_non_nullable
              as ProfileAvatarDataModel?,
      firstNameJa: freezed == firstNameJa
          ? _value.firstNameJa
          : firstNameJa // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameJa: freezed == lastNameJa
          ? _value.lastNameJa
          : lastNameJa // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameRomaji: freezed == firstNameRomaji
          ? _value.firstNameRomaji
          : firstNameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameRomaji: freezed == lastNameRomaji
          ? _value.lastNameRomaji
          : lastNameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedProfileAt: freezed == lastUpdatedProfileAt
          ? _value.lastUpdatedProfileAt
          : lastUpdatedProfileAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileCurrentDataModel implements _ProfileCurrentDataModel {
  const _$_ProfileCurrentDataModel(
      {this.id,
      @JsonKey(name: 'profile_avatar') this.profileAvatar,
      @JsonKey(name: 'first_name_ja') this.firstNameJa,
      @JsonKey(name: 'last_name_ja') this.lastNameJa,
      @JsonKey(name: 'first_name_romaji') this.firstNameRomaji,
      @JsonKey(name: 'last_name_romaji') this.lastNameRomaji,
      @JsonKey(name: 'nick_name') this.nickName,
      @JsonKey(name: 'last_updated_profile_at') this.lastUpdatedProfileAt,
      this.email,
      this.step});

  factory _$_ProfileCurrentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileCurrentDataModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'profile_avatar')
  final ProfileAvatarDataModel? profileAvatar;
  @override
  @JsonKey(name: 'first_name_ja')
  final String? firstNameJa;
  @override
  @JsonKey(name: 'last_name_ja')
  final String? lastNameJa;
  @override
  @JsonKey(name: 'first_name_romaji')
  final String? firstNameRomaji;
  @override
  @JsonKey(name: 'last_name_romaji')
  final String? lastNameRomaji;
  @override
  @JsonKey(name: 'nick_name')
  final String? nickName;
  @override
  @JsonKey(name: 'last_updated_profile_at')
  final DateTime? lastUpdatedProfileAt;
  @override
  final String? email;
  @override
  final int? step;

  @override
  String toString() {
    return 'ProfileCurrentDataModel(id: $id, profileAvatar: $profileAvatar, firstNameJa: $firstNameJa, lastNameJa: $lastNameJa, firstNameRomaji: $firstNameRomaji, lastNameRomaji: $lastNameRomaji, nickName: $nickName, lastUpdatedProfileAt: $lastUpdatedProfileAt, email: $email, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileCurrentDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileAvatar, profileAvatar) ||
                other.profileAvatar == profileAvatar) &&
            (identical(other.firstNameJa, firstNameJa) ||
                other.firstNameJa == firstNameJa) &&
            (identical(other.lastNameJa, lastNameJa) ||
                other.lastNameJa == lastNameJa) &&
            (identical(other.firstNameRomaji, firstNameRomaji) ||
                other.firstNameRomaji == firstNameRomaji) &&
            (identical(other.lastNameRomaji, lastNameRomaji) ||
                other.lastNameRomaji == lastNameRomaji) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.lastUpdatedProfileAt, lastUpdatedProfileAt) ||
                other.lastUpdatedProfileAt == lastUpdatedProfileAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profileAvatar,
      firstNameJa,
      lastNameJa,
      firstNameRomaji,
      lastNameRomaji,
      nickName,
      lastUpdatedProfileAt,
      email,
      step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCurrentDataModelCopyWith<_$_ProfileCurrentDataModel>
      get copyWith =>
          __$$_ProfileCurrentDataModelCopyWithImpl<_$_ProfileCurrentDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileCurrentDataModelToJson(
      this,
    );
  }
}

abstract class _ProfileCurrentDataModel implements ProfileCurrentDataModel {
  const factory _ProfileCurrentDataModel(
      {final int? id,
      @JsonKey(name: 'profile_avatar')
          final ProfileAvatarDataModel? profileAvatar,
      @JsonKey(name: 'first_name_ja')
          final String? firstNameJa,
      @JsonKey(name: 'last_name_ja')
          final String? lastNameJa,
      @JsonKey(name: 'first_name_romaji')
          final String? firstNameRomaji,
      @JsonKey(name: 'last_name_romaji')
          final String? lastNameRomaji,
      @JsonKey(name: 'nick_name')
          final String? nickName,
      @JsonKey(name: 'last_updated_profile_at')
          final DateTime? lastUpdatedProfileAt,
      final String? email,
      final int? step}) = _$_ProfileCurrentDataModel;

  factory _ProfileCurrentDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileCurrentDataModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'profile_avatar')
  ProfileAvatarDataModel? get profileAvatar;
  @override
  @JsonKey(name: 'first_name_ja')
  String? get firstNameJa;
  @override
  @JsonKey(name: 'last_name_ja')
  String? get lastNameJa;
  @override
  @JsonKey(name: 'first_name_romaji')
  String? get firstNameRomaji;
  @override
  @JsonKey(name: 'last_name_romaji')
  String? get lastNameRomaji;
  @override
  @JsonKey(name: 'nick_name')
  String? get nickName;
  @override
  @JsonKey(name: 'last_updated_profile_at')
  DateTime? get lastUpdatedProfileAt;
  @override
  String? get email;
  @override
  int? get step;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCurrentDataModelCopyWith<_$_ProfileCurrentDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
