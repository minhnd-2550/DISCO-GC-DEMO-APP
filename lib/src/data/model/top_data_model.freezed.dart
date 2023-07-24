// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopDataModel _$TopDataModelFromJson(Map<String, dynamic> json) {
  return _TopDataModel.fromJson(json);
}

/// @nodoc
mixin _$TopDataModel {
  @JsonKey(name: 'event_reservations')
  List<EventReservationsDataModel>? get eventReservations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopDataModelCopyWith<TopDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopDataModelCopyWith<$Res> {
  factory $TopDataModelCopyWith(
          TopDataModel value, $Res Function(TopDataModel) then) =
      _$TopDataModelCopyWithImpl<$Res, TopDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'event_reservations')
          List<EventReservationsDataModel>? eventReservations});
}

/// @nodoc
class _$TopDataModelCopyWithImpl<$Res, $Val extends TopDataModel>
    implements $TopDataModelCopyWith<$Res> {
  _$TopDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventReservations = freezed,
  }) {
    return _then(_value.copyWith(
      eventReservations: freezed == eventReservations
          ? _value.eventReservations
          : eventReservations // ignore: cast_nullable_to_non_nullable
              as List<EventReservationsDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopDataModelCopyWith<$Res>
    implements $TopDataModelCopyWith<$Res> {
  factory _$$_TopDataModelCopyWith(
          _$_TopDataModel value, $Res Function(_$_TopDataModel) then) =
      __$$_TopDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'event_reservations')
          List<EventReservationsDataModel>? eventReservations});
}

/// @nodoc
class __$$_TopDataModelCopyWithImpl<$Res>
    extends _$TopDataModelCopyWithImpl<$Res, _$_TopDataModel>
    implements _$$_TopDataModelCopyWith<$Res> {
  __$$_TopDataModelCopyWithImpl(
      _$_TopDataModel _value, $Res Function(_$_TopDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventReservations = freezed,
  }) {
    return _then(_$_TopDataModel(
      eventReservations: freezed == eventReservations
          ? _value._eventReservations
          : eventReservations // ignore: cast_nullable_to_non_nullable
              as List<EventReservationsDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopDataModel implements _TopDataModel {
  const _$_TopDataModel(
      {@JsonKey(name: 'event_reservations')
          final List<EventReservationsDataModel>? eventReservations})
      : _eventReservations = eventReservations;

  factory _$_TopDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopDataModelFromJson(json);

  final List<EventReservationsDataModel>? _eventReservations;
  @override
  @JsonKey(name: 'event_reservations')
  List<EventReservationsDataModel>? get eventReservations {
    final value = _eventReservations;
    if (value == null) return null;
    if (_eventReservations is EqualUnmodifiableListView)
      return _eventReservations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopDataModel(eventReservations: $eventReservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopDataModel &&
            const DeepCollectionEquality()
                .equals(other._eventReservations, _eventReservations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_eventReservations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopDataModelCopyWith<_$_TopDataModel> get copyWith =>
      __$$_TopDataModelCopyWithImpl<_$_TopDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopDataModelToJson(
      this,
    );
  }
}

abstract class _TopDataModel implements TopDataModel {
  const factory _TopDataModel(
          {@JsonKey(name: 'event_reservations')
              final List<EventReservationsDataModel>? eventReservations}) =
      _$_TopDataModel;

  factory _TopDataModel.fromJson(Map<String, dynamic> json) =
      _$_TopDataModel.fromJson;

  @override
  @JsonKey(name: 'event_reservations')
  List<EventReservationsDataModel>? get eventReservations;
  @override
  @JsonKey(ignore: true)
  _$$_TopDataModelCopyWith<_$_TopDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
