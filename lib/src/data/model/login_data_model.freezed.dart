// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) {
  return _LoginDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginDataModel {
  AccountLoginDataModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataModelCopyWith<LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataModelCopyWith<$Res> {
  factory $LoginDataModelCopyWith(
          LoginDataModel value, $Res Function(LoginDataModel) then) =
      _$LoginDataModelCopyWithImpl<$Res, LoginDataModel>;
  @useResult
  $Res call({AccountLoginDataModel? user});

  $AccountLoginDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res, $Val extends LoginDataModel>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AccountLoginDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountLoginDataModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AccountLoginDataModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginDataModelCopyWith<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  factory _$$_LoginDataModelCopyWith(
          _$_LoginDataModel value, $Res Function(_$_LoginDataModel) then) =
      __$$_LoginDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountLoginDataModel? user});

  @override
  $AccountLoginDataModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginDataModelCopyWithImpl<$Res>
    extends _$LoginDataModelCopyWithImpl<$Res, _$_LoginDataModel>
    implements _$$_LoginDataModelCopyWith<$Res> {
  __$$_LoginDataModelCopyWithImpl(
      _$_LoginDataModel _value, $Res Function(_$_LoginDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_LoginDataModel(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AccountLoginDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDataModel implements _LoginDataModel {
  const _$_LoginDataModel({this.user});

  factory _$_LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDataModelFromJson(json);

  @override
  final AccountLoginDataModel? user;

  @override
  String toString() {
    return 'LoginDataModel(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDataModel &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDataModelCopyWith<_$_LoginDataModel> get copyWith =>
      __$$_LoginDataModelCopyWithImpl<_$_LoginDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDataModelToJson(
      this,
    );
  }
}

abstract class _LoginDataModel implements LoginDataModel {
  const factory _LoginDataModel({final AccountLoginDataModel? user}) =
      _$_LoginDataModel;

  factory _LoginDataModel.fromJson(Map<String, dynamic> json) =
      _$_LoginDataModel.fromJson;

  @override
  AccountLoginDataModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDataModelCopyWith<_$_LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
