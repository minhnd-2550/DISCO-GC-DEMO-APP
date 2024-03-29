// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDataModel _$CountryDataModelFromJson(Map<String, dynamic> json) {
  return _CountryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CountryDataModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDataModelCopyWith<CountryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataModelCopyWith<$Res> {
  factory $CountryDataModelCopyWith(
          CountryDataModel value, $Res Function(CountryDataModel) then) =
      _$CountryDataModelCopyWithImpl<$Res, CountryDataModel>;
  @useResult
  $Res call({String? name, @JsonKey(name: 'iso_3166_1') String? code});
}

/// @nodoc
class _$CountryDataModelCopyWithImpl<$Res, $Val extends CountryDataModel>
    implements $CountryDataModelCopyWith<$Res> {
  _$CountryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDataModelCopyWith<$Res>
    implements $CountryDataModelCopyWith<$Res> {
  factory _$$_CountryDataModelCopyWith(
          _$_CountryDataModel value, $Res Function(_$_CountryDataModel) then) =
      __$$_CountryDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: 'iso_3166_1') String? code});
}

/// @nodoc
class __$$_CountryDataModelCopyWithImpl<$Res>
    extends _$CountryDataModelCopyWithImpl<$Res, _$_CountryDataModel>
    implements _$$_CountryDataModelCopyWith<$Res> {
  __$$_CountryDataModelCopyWithImpl(
      _$_CountryDataModel _value, $Res Function(_$_CountryDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_CountryDataModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDataModel implements _CountryDataModel {
  const _$_CountryDataModel(
      {this.name, @JsonKey(name: 'iso_3166_1') this.code});

  factory _$_CountryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDataModelFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? code;

  @override
  String toString() {
    return 'CountryDataModel(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDataModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDataModelCopyWith<_$_CountryDataModel> get copyWith =>
      __$$_CountryDataModelCopyWithImpl<_$_CountryDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDataModelToJson(
      this,
    );
  }
}

abstract class _CountryDataModel implements CountryDataModel {
  const factory _CountryDataModel(
      {final String? name,
      @JsonKey(name: 'iso_3166_1') final String? code}) = _$_CountryDataModel;

  factory _CountryDataModel.fromJson(Map<String, dynamic> json) =
      _$_CountryDataModel.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDataModelCopyWith<_$_CountryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
