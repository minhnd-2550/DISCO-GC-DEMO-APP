// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyDataModel _$CompanyDataModelFromJson(Map<String, dynamic> json) {
  return _CompanyDataModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyDataModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_country')
  String? get originalCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDataModelCopyWith<CompanyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDataModelCopyWith<$Res> {
  factory $CompanyDataModelCopyWith(
          CompanyDataModel value, $Res Function(CompanyDataModel) then) =
      _$CompanyDataModelCopyWithImpl<$Res, CompanyDataModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'original_country') String? originalCountry});
}

/// @nodoc
class _$CompanyDataModelCopyWithImpl<$Res, $Val extends CompanyDataModel>
    implements $CompanyDataModelCopyWith<$Res> {
  _$CompanyDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originalCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalCountry: freezed == originalCountry
          ? _value.originalCountry
          : originalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompanyDataModelCopyWith<$Res>
    implements $CompanyDataModelCopyWith<$Res> {
  factory _$$_CompanyDataModelCopyWith(
          _$_CompanyDataModel value, $Res Function(_$_CompanyDataModel) then) =
      __$$_CompanyDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'original_country') String? originalCountry});
}

/// @nodoc
class __$$_CompanyDataModelCopyWithImpl<$Res>
    extends _$CompanyDataModelCopyWithImpl<$Res, _$_CompanyDataModel>
    implements _$$_CompanyDataModelCopyWith<$Res> {
  __$$_CompanyDataModelCopyWithImpl(
      _$_CompanyDataModel _value, $Res Function(_$_CompanyDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originalCountry = freezed,
  }) {
    return _then(_$_CompanyDataModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalCountry: freezed == originalCountry
          ? _value.originalCountry
          : originalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyDataModel implements _CompanyDataModel {
  const _$_CompanyDataModel(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'original_country') this.originalCountry});

  factory _$_CompanyDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyDataModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  final String? name;
  @override
  @JsonKey(name: 'original_country')
  final String? originalCountry;

  @override
  String toString() {
    return 'CompanyDataModel(id: $id, logoPath: $logoPath, name: $name, originalCountry: $originalCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyDataModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalCountry, originalCountry) ||
                other.originalCountry == originalCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originalCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyDataModelCopyWith<_$_CompanyDataModel> get copyWith =>
      __$$_CompanyDataModelCopyWithImpl<_$_CompanyDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyDataModelToJson(
      this,
    );
  }
}

abstract class _CompanyDataModel implements CompanyDataModel {
  const factory _CompanyDataModel(
          {final int? id,
          @JsonKey(name: 'logo_path') final String? logoPath,
          final String? name,
          @JsonKey(name: 'original_country') final String? originalCountry}) =
      _$_CompanyDataModel;

  factory _CompanyDataModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyDataModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  String? get name;
  @override
  @JsonKey(name: 'original_country')
  String? get originalCountry;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyDataModelCopyWith<_$_CompanyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
