// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDataModel _$LoginResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _LoginResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDataModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataModelCopyWith<LoginResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataModelCopyWith<$Res> {
  factory $LoginResponseDataModelCopyWith(LoginResponseDataModel value,
          $Res Function(LoginResponseDataModel) then) =
      _$LoginResponseDataModelCopyWithImpl<$Res, LoginResponseDataModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$LoginResponseDataModelCopyWithImpl<$Res,
        $Val extends LoginResponseDataModel>
    implements $LoginResponseDataModelCopyWith<$Res> {
  _$LoginResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginResponseDataModelCopyWith<$Res>
    implements $LoginResponseDataModelCopyWith<$Res> {
  factory _$$_LoginResponseDataModelCopyWith(_$_LoginResponseDataModel value,
          $Res Function(_$_LoginResponseDataModel) then) =
      __$$_LoginResponseDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$$_LoginResponseDataModelCopyWithImpl<$Res>
    extends _$LoginResponseDataModelCopyWithImpl<$Res,
        _$_LoginResponseDataModel>
    implements _$$_LoginResponseDataModelCopyWith<$Res> {
  __$$_LoginResponseDataModelCopyWithImpl(_$_LoginResponseDataModel _value,
      $Res Function(_$_LoginResponseDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_LoginResponseDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDataModel implements _LoginResponseDataModel {
  const _$_LoginResponseDataModel(
      {this.id,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken});

  factory _$_LoginResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDataModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'LoginResponseDataModel(id: $id, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseDataModelCopyWith<_$_LoginResponseDataModel> get copyWith =>
      __$$_LoginResponseDataModelCopyWithImpl<_$_LoginResponseDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDataModelToJson(
      this,
    );
  }
}

abstract class _LoginResponseDataModel implements LoginResponseDataModel {
  const factory _LoginResponseDataModel(
          {final int? id,
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'refresh_token') final String? refreshToken}) =
      _$_LoginResponseDataModel;

  factory _LoginResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDataModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseDataModelCopyWith<_$_LoginResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
