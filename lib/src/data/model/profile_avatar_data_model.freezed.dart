// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_avatar_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileAvatarDataModel _$ProfileAvatarDataModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileAvatarDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileAvatarDataModel {
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_status')
  String? get uploadStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileAvatarDataModelCopyWith<ProfileAvatarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAvatarDataModelCopyWith<$Res> {
  factory $ProfileAvatarDataModelCopyWith(ProfileAvatarDataModel value,
          $Res Function(ProfileAvatarDataModel) then) =
      _$ProfileAvatarDataModelCopyWithImpl<$Res, ProfileAvatarDataModel>;
  @useResult
  $Res call(
      {String? url, @JsonKey(name: 'upload_status') String? uploadStatus});
}

/// @nodoc
class _$ProfileAvatarDataModelCopyWithImpl<$Res,
        $Val extends ProfileAvatarDataModel>
    implements $ProfileAvatarDataModelCopyWith<$Res> {
  _$ProfileAvatarDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? uploadStatus = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadStatus: freezed == uploadStatus
          ? _value.uploadStatus
          : uploadStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileAvatarDataModelCopyWith<$Res>
    implements $ProfileAvatarDataModelCopyWith<$Res> {
  factory _$$_ProfileAvatarDataModelCopyWith(_$_ProfileAvatarDataModel value,
          $Res Function(_$_ProfileAvatarDataModel) then) =
      __$$_ProfileAvatarDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, @JsonKey(name: 'upload_status') String? uploadStatus});
}

/// @nodoc
class __$$_ProfileAvatarDataModelCopyWithImpl<$Res>
    extends _$ProfileAvatarDataModelCopyWithImpl<$Res,
        _$_ProfileAvatarDataModel>
    implements _$$_ProfileAvatarDataModelCopyWith<$Res> {
  __$$_ProfileAvatarDataModelCopyWithImpl(_$_ProfileAvatarDataModel _value,
      $Res Function(_$_ProfileAvatarDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? uploadStatus = freezed,
  }) {
    return _then(_$_ProfileAvatarDataModel(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadStatus: freezed == uploadStatus
          ? _value.uploadStatus
          : uploadStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileAvatarDataModel implements _ProfileAvatarDataModel {
  const _$_ProfileAvatarDataModel(
      {this.url, @JsonKey(name: 'upload_status') this.uploadStatus});

  factory _$_ProfileAvatarDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileAvatarDataModelFromJson(json);

  @override
  final String? url;
  @override
  @JsonKey(name: 'upload_status')
  final String? uploadStatus;

  @override
  String toString() {
    return 'ProfileAvatarDataModel(url: $url, uploadStatus: $uploadStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileAvatarDataModel &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.uploadStatus, uploadStatus) ||
                other.uploadStatus == uploadStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, uploadStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileAvatarDataModelCopyWith<_$_ProfileAvatarDataModel> get copyWith =>
      __$$_ProfileAvatarDataModelCopyWithImpl<_$_ProfileAvatarDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileAvatarDataModelToJson(
      this,
    );
  }
}

abstract class _ProfileAvatarDataModel implements ProfileAvatarDataModel {
  const factory _ProfileAvatarDataModel(
          {final String? url,
          @JsonKey(name: 'upload_status') final String? uploadStatus}) =
      _$_ProfileAvatarDataModel;

  factory _ProfileAvatarDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileAvatarDataModel.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(name: 'upload_status')
  String? get uploadStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileAvatarDataModelCopyWith<_$_ProfileAvatarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
