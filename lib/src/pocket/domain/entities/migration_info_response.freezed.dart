// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'migration_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MigrationInfoResponse _$MigrationInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _MigrationInfoResponse.fromJson(json);
}

/// @nodoc
class _$MigrationInfoResponseTearOff {
  const _$MigrationInfoResponseTearOff();

  _MigrationInfoResponse call(
      {required int accessCount, required DateTime deadline}) {
    return _MigrationInfoResponse(
      accessCount: accessCount,
      deadline: deadline,
    );
  }

  MigrationInfoResponse fromJson(Map<String, Object> json) {
    return MigrationInfoResponse.fromJson(json);
  }
}

/// @nodoc
const $MigrationInfoResponse = _$MigrationInfoResponseTearOff();

/// @nodoc
mixin _$MigrationInfoResponse {
  int get accessCount => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MigrationInfoResponseCopyWith<MigrationInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MigrationInfoResponseCopyWith<$Res> {
  factory $MigrationInfoResponseCopyWith(MigrationInfoResponse value,
          $Res Function(MigrationInfoResponse) then) =
      _$MigrationInfoResponseCopyWithImpl<$Res>;
  $Res call({int accessCount, DateTime deadline});
}

/// @nodoc
class _$MigrationInfoResponseCopyWithImpl<$Res>
    implements $MigrationInfoResponseCopyWith<$Res> {
  _$MigrationInfoResponseCopyWithImpl(this._value, this._then);

  final MigrationInfoResponse _value;
  // ignore: unused_field
  final $Res Function(MigrationInfoResponse) _then;

  @override
  $Res call({
    Object? accessCount = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      accessCount: accessCount == freezed
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MigrationInfoResponseCopyWith<$Res>
    implements $MigrationInfoResponseCopyWith<$Res> {
  factory _$MigrationInfoResponseCopyWith(_MigrationInfoResponse value,
          $Res Function(_MigrationInfoResponse) then) =
      __$MigrationInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({int accessCount, DateTime deadline});
}

/// @nodoc
class __$MigrationInfoResponseCopyWithImpl<$Res>
    extends _$MigrationInfoResponseCopyWithImpl<$Res>
    implements _$MigrationInfoResponseCopyWith<$Res> {
  __$MigrationInfoResponseCopyWithImpl(_MigrationInfoResponse _value,
      $Res Function(_MigrationInfoResponse) _then)
      : super(_value, (v) => _then(v as _MigrationInfoResponse));

  @override
  _MigrationInfoResponse get _value => super._value as _MigrationInfoResponse;

  @override
  $Res call({
    Object? accessCount = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_MigrationInfoResponse(
      accessCount: accessCount == freezed
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MigrationInfoResponse implements _MigrationInfoResponse {
  const _$_MigrationInfoResponse(
      {required this.accessCount, required this.deadline});

  factory _$_MigrationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MigrationInfoResponseFromJson(json);

  @override
  final int accessCount;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'MigrationInfoResponse(accessCount: $accessCount, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MigrationInfoResponse &&
            (identical(other.accessCount, accessCount) ||
                const DeepCollectionEquality()
                    .equals(other.accessCount, accessCount)) &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessCount) ^
      const DeepCollectionEquality().hash(deadline);

  @JsonKey(ignore: true)
  @override
  _$MigrationInfoResponseCopyWith<_MigrationInfoResponse> get copyWith =>
      __$MigrationInfoResponseCopyWithImpl<_MigrationInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MigrationInfoResponseToJson(this);
  }
}

abstract class _MigrationInfoResponse implements MigrationInfoResponse {
  const factory _MigrationInfoResponse(
      {required int accessCount,
      required DateTime deadline}) = _$_MigrationInfoResponse;

  factory _MigrationInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_MigrationInfoResponse.fromJson;

  @override
  int get accessCount => throw _privateConstructorUsedError;
  @override
  DateTime get deadline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MigrationInfoResponseCopyWith<_MigrationInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
