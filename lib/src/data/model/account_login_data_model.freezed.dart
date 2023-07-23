// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_login_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountLoginDataModel _$AccountLoginDataModelFromJson(
    Map<String, dynamic> json) {
  return _AccountLoginDataModel.fromJson(json);
}

/// @nodoc
mixin _$AccountLoginDataModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountLoginDataModelCopyWith<AccountLoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountLoginDataModelCopyWith<$Res> {
  factory $AccountLoginDataModelCopyWith(AccountLoginDataModel value,
          $Res Function(AccountLoginDataModel) then) =
      _$AccountLoginDataModelCopyWithImpl<$Res, AccountLoginDataModel>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$AccountLoginDataModelCopyWithImpl<$Res,
        $Val extends AccountLoginDataModel>
    implements $AccountLoginDataModelCopyWith<$Res> {
  _$AccountLoginDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountLoginDataModelCopyWith<$Res>
    implements $AccountLoginDataModelCopyWith<$Res> {
  factory _$$_AccountLoginDataModelCopyWith(_$_AccountLoginDataModel value,
          $Res Function(_$_AccountLoginDataModel) then) =
      __$$_AccountLoginDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$_AccountLoginDataModelCopyWithImpl<$Res>
    extends _$AccountLoginDataModelCopyWithImpl<$Res, _$_AccountLoginDataModel>
    implements _$$_AccountLoginDataModelCopyWith<$Res> {
  __$$_AccountLoginDataModelCopyWithImpl(_$_AccountLoginDataModel _value,
      $Res Function(_$_AccountLoginDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AccountLoginDataModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountLoginDataModel implements _AccountLoginDataModel {
  const _$_AccountLoginDataModel({this.email, this.password});

  factory _$_AccountLoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountLoginDataModelFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'AccountLoginDataModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountLoginDataModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountLoginDataModelCopyWith<_$_AccountLoginDataModel> get copyWith =>
      __$$_AccountLoginDataModelCopyWithImpl<_$_AccountLoginDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountLoginDataModelToJson(
      this,
    );
  }
}

abstract class _AccountLoginDataModel implements AccountLoginDataModel {
  const factory _AccountLoginDataModel(
      {final String? email, final String? password}) = _$_AccountLoginDataModel;

  factory _AccountLoginDataModel.fromJson(Map<String, dynamic> json) =
      _$_AccountLoginDataModel.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_AccountLoginDataModelCopyWith<_$_AccountLoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
