// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seminar_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeminarDataModel _$SeminarDataModelFromJson(Map<String, dynamic> json) {
  return _SeminarDataModel.fromJson(json);
}

/// @nodoc
mixin _$SeminarDataModel {
  @JsonKey(name: 'online_seminar')
  OnlineSeminarDataModel? get onlineSeminar =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'booth_companies')
  List<BoothCompaniesDataModel>? get boothCompanies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeminarDataModelCopyWith<SeminarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeminarDataModelCopyWith<$Res> {
  factory $SeminarDataModelCopyWith(
          SeminarDataModel value, $Res Function(SeminarDataModel) then) =
      _$SeminarDataModelCopyWithImpl<$Res, SeminarDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'online_seminar')
          OnlineSeminarDataModel? onlineSeminar,
      @JsonKey(name: 'booth_companies')
          List<BoothCompaniesDataModel>? boothCompanies});

  $OnlineSeminarDataModelCopyWith<$Res>? get onlineSeminar;
}

/// @nodoc
class _$SeminarDataModelCopyWithImpl<$Res, $Val extends SeminarDataModel>
    implements $SeminarDataModelCopyWith<$Res> {
  _$SeminarDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineSeminar = freezed,
    Object? boothCompanies = freezed,
  }) {
    return _then(_value.copyWith(
      onlineSeminar: freezed == onlineSeminar
          ? _value.onlineSeminar
          : onlineSeminar // ignore: cast_nullable_to_non_nullable
              as OnlineSeminarDataModel?,
      boothCompanies: freezed == boothCompanies
          ? _value.boothCompanies
          : boothCompanies // ignore: cast_nullable_to_non_nullable
              as List<BoothCompaniesDataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OnlineSeminarDataModelCopyWith<$Res>? get onlineSeminar {
    if (_value.onlineSeminar == null) {
      return null;
    }

    return $OnlineSeminarDataModelCopyWith<$Res>(_value.onlineSeminar!,
        (value) {
      return _then(_value.copyWith(onlineSeminar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeminarDataModelCopyWith<$Res>
    implements $SeminarDataModelCopyWith<$Res> {
  factory _$$_SeminarDataModelCopyWith(
          _$_SeminarDataModel value, $Res Function(_$_SeminarDataModel) then) =
      __$$_SeminarDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'online_seminar')
          OnlineSeminarDataModel? onlineSeminar,
      @JsonKey(name: 'booth_companies')
          List<BoothCompaniesDataModel>? boothCompanies});

  @override
  $OnlineSeminarDataModelCopyWith<$Res>? get onlineSeminar;
}

/// @nodoc
class __$$_SeminarDataModelCopyWithImpl<$Res>
    extends _$SeminarDataModelCopyWithImpl<$Res, _$_SeminarDataModel>
    implements _$$_SeminarDataModelCopyWith<$Res> {
  __$$_SeminarDataModelCopyWithImpl(
      _$_SeminarDataModel _value, $Res Function(_$_SeminarDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineSeminar = freezed,
    Object? boothCompanies = freezed,
  }) {
    return _then(_$_SeminarDataModel(
      onlineSeminar: freezed == onlineSeminar
          ? _value.onlineSeminar
          : onlineSeminar // ignore: cast_nullable_to_non_nullable
              as OnlineSeminarDataModel?,
      boothCompanies: freezed == boothCompanies
          ? _value._boothCompanies
          : boothCompanies // ignore: cast_nullable_to_non_nullable
              as List<BoothCompaniesDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeminarDataModel implements _SeminarDataModel {
  const _$_SeminarDataModel(
      {@JsonKey(name: 'online_seminar')
          this.onlineSeminar,
      @JsonKey(name: 'booth_companies')
          final List<BoothCompaniesDataModel>? boothCompanies})
      : _boothCompanies = boothCompanies;

  factory _$_SeminarDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeminarDataModelFromJson(json);

  @override
  @JsonKey(name: 'online_seminar')
  final OnlineSeminarDataModel? onlineSeminar;
  final List<BoothCompaniesDataModel>? _boothCompanies;
  @override
  @JsonKey(name: 'booth_companies')
  List<BoothCompaniesDataModel>? get boothCompanies {
    final value = _boothCompanies;
    if (value == null) return null;
    if (_boothCompanies is EqualUnmodifiableListView) return _boothCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SeminarDataModel(onlineSeminar: $onlineSeminar, boothCompanies: $boothCompanies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeminarDataModel &&
            (identical(other.onlineSeminar, onlineSeminar) ||
                other.onlineSeminar == onlineSeminar) &&
            const DeepCollectionEquality()
                .equals(other._boothCompanies, _boothCompanies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, onlineSeminar,
      const DeepCollectionEquality().hash(_boothCompanies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeminarDataModelCopyWith<_$_SeminarDataModel> get copyWith =>
      __$$_SeminarDataModelCopyWithImpl<_$_SeminarDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeminarDataModelToJson(
      this,
    );
  }
}

abstract class _SeminarDataModel implements SeminarDataModel {
  const factory _SeminarDataModel(
          {@JsonKey(name: 'online_seminar')
              final OnlineSeminarDataModel? onlineSeminar,
          @JsonKey(name: 'booth_companies')
              final List<BoothCompaniesDataModel>? boothCompanies}) =
      _$_SeminarDataModel;

  factory _SeminarDataModel.fromJson(Map<String, dynamic> json) =
      _$_SeminarDataModel.fromJson;

  @override
  @JsonKey(name: 'online_seminar')
  OnlineSeminarDataModel? get onlineSeminar;
  @override
  @JsonKey(name: 'booth_companies')
  List<BoothCompaniesDataModel>? get boothCompanies;
  @override
  @JsonKey(ignore: true)
  _$$_SeminarDataModelCopyWith<_$_SeminarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
