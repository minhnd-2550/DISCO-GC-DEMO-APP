// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booth_companies_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoothCompaniesDataModel _$BoothCompaniesDataModelFromJson(
    Map<String, dynamic> json) {
  return _BoothCompaniesDataModel.fromJson(json);
}

/// @nodoc
mixin _$BoothCompaniesDataModel {
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_company_name')
  String? get boothCompanyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_company')
  BoothCompanyDataModel? get boothCompany => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoothCompaniesDataModelCopyWith<BoothCompaniesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoothCompaniesDataModelCopyWith<$Res> {
  factory $BoothCompaniesDataModelCopyWith(BoothCompaniesDataModel value,
          $Res Function(BoothCompaniesDataModel) then) =
      _$BoothCompaniesDataModelCopyWithImpl<$Res, BoothCompaniesDataModel>;
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'booth_company_name') String? boothCompanyName,
      @JsonKey(name: 'booth_company') BoothCompanyDataModel? boothCompany});

  $BoothCompanyDataModelCopyWith<$Res>? get boothCompany;
}

/// @nodoc
class _$BoothCompaniesDataModelCopyWithImpl<$Res,
        $Val extends BoothCompaniesDataModel>
    implements $BoothCompaniesDataModelCopyWith<$Res> {
  _$BoothCompaniesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? boothCompanyName = freezed,
    Object? boothCompany = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      boothCompanyName: freezed == boothCompanyName
          ? _value.boothCompanyName
          : boothCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      boothCompany: freezed == boothCompany
          ? _value.boothCompany
          : boothCompany // ignore: cast_nullable_to_non_nullable
              as BoothCompanyDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoothCompanyDataModelCopyWith<$Res>? get boothCompany {
    if (_value.boothCompany == null) {
      return null;
    }

    return $BoothCompanyDataModelCopyWith<$Res>(_value.boothCompany!, (value) {
      return _then(_value.copyWith(boothCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BoothCompaniesDataModelCopyWith<$Res>
    implements $BoothCompaniesDataModelCopyWith<$Res> {
  factory _$$_BoothCompaniesDataModelCopyWith(_$_BoothCompaniesDataModel value,
          $Res Function(_$_BoothCompaniesDataModel) then) =
      __$$_BoothCompaniesDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'booth_company_name') String? boothCompanyName,
      @JsonKey(name: 'booth_company') BoothCompanyDataModel? boothCompany});

  @override
  $BoothCompanyDataModelCopyWith<$Res>? get boothCompany;
}

/// @nodoc
class __$$_BoothCompaniesDataModelCopyWithImpl<$Res>
    extends _$BoothCompaniesDataModelCopyWithImpl<$Res,
        _$_BoothCompaniesDataModel>
    implements _$$_BoothCompaniesDataModelCopyWith<$Res> {
  __$$_BoothCompaniesDataModelCopyWithImpl(_$_BoothCompaniesDataModel _value,
      $Res Function(_$_BoothCompaniesDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? boothCompanyName = freezed,
    Object? boothCompany = freezed,
  }) {
    return _then(_$_BoothCompaniesDataModel(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      boothCompanyName: freezed == boothCompanyName
          ? _value.boothCompanyName
          : boothCompanyName // ignore: cast_nullable_to_non_nullable
              as String?,
      boothCompany: freezed == boothCompany
          ? _value.boothCompany
          : boothCompany // ignore: cast_nullable_to_non_nullable
              as BoothCompanyDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoothCompaniesDataModel implements _BoothCompaniesDataModel {
  const _$_BoothCompaniesDataModel(
      {this.description,
      @JsonKey(name: 'booth_company_name') this.boothCompanyName,
      @JsonKey(name: 'booth_company') this.boothCompany});

  factory _$_BoothCompaniesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoothCompaniesDataModelFromJson(json);

  @override
  final String? description;
  @override
  @JsonKey(name: 'booth_company_name')
  final String? boothCompanyName;
  @override
  @JsonKey(name: 'booth_company')
  final BoothCompanyDataModel? boothCompany;

  @override
  String toString() {
    return 'BoothCompaniesDataModel(description: $description, boothCompanyName: $boothCompanyName, boothCompany: $boothCompany)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoothCompaniesDataModel &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.boothCompanyName, boothCompanyName) ||
                other.boothCompanyName == boothCompanyName) &&
            (identical(other.boothCompany, boothCompany) ||
                other.boothCompany == boothCompany));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, boothCompanyName, boothCompany);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoothCompaniesDataModelCopyWith<_$_BoothCompaniesDataModel>
      get copyWith =>
          __$$_BoothCompaniesDataModelCopyWithImpl<_$_BoothCompaniesDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoothCompaniesDataModelToJson(
      this,
    );
  }
}

abstract class _BoothCompaniesDataModel implements BoothCompaniesDataModel {
  const factory _BoothCompaniesDataModel(
          {final String? description,
          @JsonKey(name: 'booth_company_name')
              final String? boothCompanyName,
          @JsonKey(name: 'booth_company')
              final BoothCompanyDataModel? boothCompany}) =
      _$_BoothCompaniesDataModel;

  factory _BoothCompaniesDataModel.fromJson(Map<String, dynamic> json) =
      _$_BoothCompaniesDataModel.fromJson;

  @override
  String? get description;
  @override
  @JsonKey(name: 'booth_company_name')
  String? get boothCompanyName;
  @override
  @JsonKey(name: 'booth_company')
  BoothCompanyDataModel? get boothCompany;
  @override
  @JsonKey(ignore: true)
  _$$_BoothCompaniesDataModelCopyWith<_$_BoothCompaniesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
