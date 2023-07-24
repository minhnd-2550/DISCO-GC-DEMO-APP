// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_reservations_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventReservationsDataModel _$EventReservationsDataModelFromJson(
    Map<String, dynamic> json) {
  return _EventReservationsDataModel.fromJson(json);
}

/// @nodoc
mixin _$EventReservationsDataModel {
  String? get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_reservations')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_opening_seminar')
  bool? get hasOpeningSeminar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventReservationsDataModelCopyWith<EventReservationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventReservationsDataModelCopyWith<$Res> {
  factory $EventReservationsDataModelCopyWith(EventReservationsDataModel value,
          $Res Function(EventReservationsDataModel) then) =
      _$EventReservationsDataModelCopyWithImpl<$Res,
          EventReservationsDataModel>;
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'event_reservations') String? username,
      @JsonKey(name: 'has_opening_seminar') bool? hasOpeningSeminar});
}

/// @nodoc
class _$EventReservationsDataModelCopyWithImpl<$Res,
        $Val extends EventReservationsDataModel>
    implements $EventReservationsDataModelCopyWith<$Res> {
  _$EventReservationsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? username = freezed,
    Object? hasOpeningSeminar = freezed,
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
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      hasOpeningSeminar: freezed == hasOpeningSeminar
          ? _value.hasOpeningSeminar
          : hasOpeningSeminar // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventReservationsDataModelCopyWith<$Res>
    implements $EventReservationsDataModelCopyWith<$Res> {
  factory _$$_EventReservationsDataModelCopyWith(
          _$_EventReservationsDataModel value,
          $Res Function(_$_EventReservationsDataModel) then) =
      __$$_EventReservationsDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? content,
      @JsonKey(name: 'event_reservations') String? username,
      @JsonKey(name: 'has_opening_seminar') bool? hasOpeningSeminar});
}

/// @nodoc
class __$$_EventReservationsDataModelCopyWithImpl<$Res>
    extends _$EventReservationsDataModelCopyWithImpl<$Res,
        _$_EventReservationsDataModel>
    implements _$$_EventReservationsDataModelCopyWith<$Res> {
  __$$_EventReservationsDataModelCopyWithImpl(
      _$_EventReservationsDataModel _value,
      $Res Function(_$_EventReservationsDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? content = freezed,
    Object? username = freezed,
    Object? hasOpeningSeminar = freezed,
  }) {
    return _then(_$_EventReservationsDataModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      hasOpeningSeminar: freezed == hasOpeningSeminar
          ? _value.hasOpeningSeminar
          : hasOpeningSeminar // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventReservationsDataModel implements _EventReservationsDataModel {
  const _$_EventReservationsDataModel(
      {this.name,
      this.content,
      @JsonKey(name: 'event_reservations') this.username,
      @JsonKey(name: 'has_opening_seminar') this.hasOpeningSeminar});

  factory _$_EventReservationsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventReservationsDataModelFromJson(json);

  @override
  final String? name;
  @override
  final String? content;
  @override
  @JsonKey(name: 'event_reservations')
  final String? username;
  @override
  @JsonKey(name: 'has_opening_seminar')
  final bool? hasOpeningSeminar;

  @override
  String toString() {
    return 'EventReservationsDataModel(name: $name, content: $content, username: $username, hasOpeningSeminar: $hasOpeningSeminar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReservationsDataModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.hasOpeningSeminar, hasOpeningSeminar) ||
                other.hasOpeningSeminar == hasOpeningSeminar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, content, username, hasOpeningSeminar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventReservationsDataModelCopyWith<_$_EventReservationsDataModel>
      get copyWith => __$$_EventReservationsDataModelCopyWithImpl<
          _$_EventReservationsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventReservationsDataModelToJson(
      this,
    );
  }
}

abstract class _EventReservationsDataModel
    implements EventReservationsDataModel {
  const factory _EventReservationsDataModel(
      {final String? name,
      final String? content,
      @JsonKey(name: 'event_reservations')
          final String? username,
      @JsonKey(name: 'has_opening_seminar')
          final bool? hasOpeningSeminar}) = _$_EventReservationsDataModel;

  factory _EventReservationsDataModel.fromJson(Map<String, dynamic> json) =
      _$_EventReservationsDataModel.fromJson;

  @override
  String? get name;
  @override
  String? get content;
  @override
  @JsonKey(name: 'event_reservations')
  String? get username;
  @override
  @JsonKey(name: 'has_opening_seminar')
  bool? get hasOpeningSeminar;
  @override
  @JsonKey(ignore: true)
  _$$_EventReservationsDataModelCopyWith<_$_EventReservationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
