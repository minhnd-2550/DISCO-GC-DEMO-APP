// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booth_company_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoothCompanyDataModel _$BoothCompanyDataModelFromJson(
    Map<String, dynamic> json) {
  return _BoothCompanyDataModel.fromJson(json);
}

/// @nodoc
mixin _$BoothCompanyDataModel {
  @JsonKey(name: 'official_name')
  String? get officialName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoothCompanyDataModelCopyWith<BoothCompanyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoothCompanyDataModelCopyWith<$Res> {
  factory $BoothCompanyDataModelCopyWith(BoothCompanyDataModel value,
          $Res Function(BoothCompanyDataModel) then) =
      _$BoothCompanyDataModelCopyWithImpl<$Res, BoothCompanyDataModel>;
  @useResult
  $Res call({@JsonKey(name: 'official_name') String? officialName});
}

/// @nodoc
class _$BoothCompanyDataModelCopyWithImpl<$Res,
        $Val extends BoothCompanyDataModel>
    implements $BoothCompanyDataModelCopyWith<$Res> {
  _$BoothCompanyDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialName = freezed,
  }) {
    return _then(_value.copyWith(
      officialName: freezed == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoothCompanyDataModelCopyWith<$Res>
    implements $BoothCompanyDataModelCopyWith<$Res> {
  factory _$$_BoothCompanyDataModelCopyWith(_$_BoothCompanyDataModel value,
          $Res Function(_$_BoothCompanyDataModel) then) =
      __$$_BoothCompanyDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'official_name') String? officialName});
}

/// @nodoc
class __$$_BoothCompanyDataModelCopyWithImpl<$Res>
    extends _$BoothCompanyDataModelCopyWithImpl<$Res, _$_BoothCompanyDataModel>
    implements _$$_BoothCompanyDataModelCopyWith<$Res> {
  __$$_BoothCompanyDataModelCopyWithImpl(_$_BoothCompanyDataModel _value,
      $Res Function(_$_BoothCompanyDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialName = freezed,
  }) {
    return _then(_$_BoothCompanyDataModel(
      officialName: freezed == officialName
          ? _value.officialName
          : officialName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoothCompanyDataModel implements _BoothCompanyDataModel {
  const _$_BoothCompanyDataModel(
      {@JsonKey(name: 'official_name') this.officialName});

  factory _$_BoothCompanyDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoothCompanyDataModelFromJson(json);

  @override
  @JsonKey(name: 'official_name')
  final String? officialName;

  @override
  String toString() {
    return 'BoothCompanyDataModel(officialName: $officialName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoothCompanyDataModel &&
            (identical(other.officialName, officialName) ||
                other.officialName == officialName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, officialName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoothCompanyDataModelCopyWith<_$_BoothCompanyDataModel> get copyWith =>
      __$$_BoothCompanyDataModelCopyWithImpl<_$_BoothCompanyDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoothCompanyDataModelToJson(
      this,
    );
  }
}

abstract class _BoothCompanyDataModel implements BoothCompanyDataModel {
  const factory _BoothCompanyDataModel(
          {@JsonKey(name: 'official_name') final String? officialName}) =
      _$_BoothCompanyDataModel;

  factory _BoothCompanyDataModel.fromJson(Map<String, dynamic> json) =
      _$_BoothCompanyDataModel.fromJson;

  @override
  @JsonKey(name: 'official_name')
  String? get officialName;
  @override
  @JsonKey(ignore: true)
  _$$_BoothCompanyDataModelCopyWith<_$_BoothCompanyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
