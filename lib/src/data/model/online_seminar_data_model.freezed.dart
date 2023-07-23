// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_seminar_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnlineSeminarDataModel _$OnlineSeminarDataModelFromJson(
    Map<String, dynamic> json) {
  return _OnlineSeminarDataModel.fromJson(json);
}

/// @nodoc
mixin _$OnlineSeminarDataModel {
  String? get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_of_exhibition')
  String? get periodOfExhibition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineSeminarDataModelCopyWith<OnlineSeminarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineSeminarDataModelCopyWith<$Res> {
  factory $OnlineSeminarDataModelCopyWith(OnlineSeminarDataModel value,
          $Res Function(OnlineSeminarDataModel) then) =
      _$OnlineSeminarDataModelCopyWithImpl<$Res, OnlineSeminarDataModel>;
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'period_of_exhibition') String? periodOfExhibition});
}

/// @nodoc
class _$OnlineSeminarDataModelCopyWithImpl<$Res,
        $Val extends OnlineSeminarDataModel>
    implements $OnlineSeminarDataModelCopyWith<$Res> {
  _$OnlineSeminarDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? periodOfExhibition = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      periodOfExhibition: freezed == periodOfExhibition
          ? _value.periodOfExhibition
          : periodOfExhibition // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnlineSeminarDataModelCopyWith<$Res>
    implements $OnlineSeminarDataModelCopyWith<$Res> {
  factory _$$_OnlineSeminarDataModelCopyWith(_$_OnlineSeminarDataModel value,
          $Res Function(_$_OnlineSeminarDataModel) then) =
      __$$_OnlineSeminarDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'period_of_exhibition') String? periodOfExhibition});
}

/// @nodoc
class __$$_OnlineSeminarDataModelCopyWithImpl<$Res>
    extends _$OnlineSeminarDataModelCopyWithImpl<$Res,
        _$_OnlineSeminarDataModel>
    implements _$$_OnlineSeminarDataModelCopyWith<$Res> {
  __$$_OnlineSeminarDataModelCopyWithImpl(_$_OnlineSeminarDataModel _value,
      $Res Function(_$_OnlineSeminarDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? periodOfExhibition = freezed,
  }) {
    return _then(_$_OnlineSeminarDataModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      periodOfExhibition: freezed == periodOfExhibition
          ? _value.periodOfExhibition
          : periodOfExhibition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnlineSeminarDataModel implements _OnlineSeminarDataModel {
  const _$_OnlineSeminarDataModel(
      {this.name,
      this.content,
      @JsonKey(name: 'period_of_exhibition') this.periodOfExhibition});

  factory _$_OnlineSeminarDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_OnlineSeminarDataModelFromJson(json);

  @override
  final String? name;
  @override
  final String? content;
  @override
  @JsonKey(name: 'period_of_exhibition')
  final String? periodOfExhibition;

  @override
  String toString() {
    return 'OnlineSeminarDataModel(name: $name, content: $content, periodOfExhibition: $periodOfExhibition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnlineSeminarDataModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.periodOfExhibition, periodOfExhibition) ||
                other.periodOfExhibition == periodOfExhibition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, content, periodOfExhibition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnlineSeminarDataModelCopyWith<_$_OnlineSeminarDataModel> get copyWith =>
      __$$_OnlineSeminarDataModelCopyWithImpl<_$_OnlineSeminarDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlineSeminarDataModelToJson(
      this,
    );
  }
}

abstract class _OnlineSeminarDataModel implements OnlineSeminarDataModel {
  const factory _OnlineSeminarDataModel(
      {final String? name,
      final String? content,
      @JsonKey(name: 'period_of_exhibition')
          final String? periodOfExhibition}) = _$_OnlineSeminarDataModel;

  factory _OnlineSeminarDataModel.fromJson(Map<String, dynamic> json) =
      _$_OnlineSeminarDataModel.fromJson;

  @override
  String? get name;
  @override
  String? get content;
  @override
  @JsonKey(name: 'period_of_exhibition')
  String? get periodOfExhibition;
  @override
  @JsonKey(ignore: true)
  _$$_OnlineSeminarDataModelCopyWith<_$_OnlineSeminarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
