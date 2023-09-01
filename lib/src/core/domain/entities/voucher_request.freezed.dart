// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VoucherRequest _$VoucherRequestFromJson(Map<String, dynamic> json) {
  return _VoucherRequest.fromJson(json);
}

/// @nodoc
mixin _$VoucherRequest {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get aim => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @VoucherTimestampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  @CreationModeConverter()
  CreationMode? get creationMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherRequestCopyWith<VoucherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherRequestCopyWith<$Res> {
  factory $VoucherRequestCopyWith(
          VoucherRequest value, $Res Function(VoucherRequest) then) =
      _$VoucherRequestCopyWithImpl<$Res, VoucherRequest>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String aim,
      int count,
      @VoucherTimestampConverter() DateTime timestamp,
      @CreationModeConverter() CreationMode? creationMode});
}

/// @nodoc
class _$VoucherRequestCopyWithImpl<$Res, $Val extends VoucherRequest>
    implements $VoucherRequestCopyWith<$Res> {
  _$VoucherRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? aim = null,
    Object? count = null,
    Object? timestamp = null,
    Object? creationMode = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      aim: null == aim
          ? _value.aim
          : aim // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationMode: freezed == creationMode
          ? _value.creationMode
          : creationMode // ignore: cast_nullable_to_non_nullable
              as CreationMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoucherRequestCopyWith<$Res>
    implements $VoucherRequestCopyWith<$Res> {
  factory _$$_VoucherRequestCopyWith(
          _$_VoucherRequest value, $Res Function(_$_VoucherRequest) then) =
      __$$_VoucherRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String aim,
      int count,
      @VoucherTimestampConverter() DateTime timestamp,
      @CreationModeConverter() CreationMode? creationMode});
}

/// @nodoc
class __$$_VoucherRequestCopyWithImpl<$Res>
    extends _$VoucherRequestCopyWithImpl<$Res, _$_VoucherRequest>
    implements _$$_VoucherRequestCopyWith<$Res> {
  __$$_VoucherRequestCopyWithImpl(
      _$_VoucherRequest _value, $Res Function(_$_VoucherRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? aim = null,
    Object? count = null,
    Object? timestamp = null,
    Object? creationMode = freezed,
  }) {
    return _then(_$_VoucherRequest(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      aim: null == aim
          ? _value.aim
          : aim // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creationMode: freezed == creationMode
          ? _value.creationMode
          : creationMode // ignore: cast_nullable_to_non_nullable
              as CreationMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VoucherRequest implements _VoucherRequest {
  const _$_VoucherRequest(
      {required this.latitude,
      required this.longitude,
      required this.aim,
      required this.count,
      @VoucherTimestampConverter() required this.timestamp,
      @CreationModeConverter() this.creationMode});

  factory _$_VoucherRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VoucherRequestFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String aim;
  @override
  final int count;
  @override
  @VoucherTimestampConverter()
  final DateTime timestamp;
  @override
  @CreationModeConverter()
  final CreationMode? creationMode;

  @override
  String toString() {
    return 'VoucherRequest(latitude: $latitude, longitude: $longitude, aim: $aim, count: $count, timestamp: $timestamp, creationMode: $creationMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoucherRequest &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.aim, aim) || other.aim == aim) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.creationMode, creationMode) ||
                other.creationMode == creationMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, aim, count, timestamp, creationMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoucherRequestCopyWith<_$_VoucherRequest> get copyWith =>
      __$$_VoucherRequestCopyWithImpl<_$_VoucherRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoucherRequestToJson(
      this,
    );
  }
}

abstract class _VoucherRequest implements VoucherRequest {
  const factory _VoucherRequest(
          {required final double latitude,
          required final double longitude,
          required final String aim,
          required final int count,
          @VoucherTimestampConverter() required final DateTime timestamp,
          @CreationModeConverter() final CreationMode? creationMode}) =
      _$_VoucherRequest;

  factory _VoucherRequest.fromJson(Map<String, dynamic> json) =
      _$_VoucherRequest.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get aim;
  @override
  int get count;
  @override
  @VoucherTimestampConverter()
  DateTime get timestamp;
  @override
  @CreationModeConverter()
  CreationMode? get creationMode;
  @override
  @JsonKey(ignore: true)
  _$$_VoucherRequestCopyWith<_$_VoucherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
