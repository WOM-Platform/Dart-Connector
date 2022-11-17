// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'voucher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
mixin _$Voucher {
  String get id => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get aim => throw _privateConstructorUsedError;
  @VoucherTimestampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  @CreationModeConverter()
  CreationMode? get creationMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call(
      {String id,
      double latitude,
      double longitude,
      String aim,
      @VoucherTimestampConverter() DateTime timestamp,
      String secret,
      @CreationModeConverter() CreationMode? creationMode});
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? aim = null,
    Object? timestamp = null,
    Object? secret = null,
    Object? creationMode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      creationMode: freezed == creationMode
          ? _value.creationMode
          : creationMode // ignore: cast_nullable_to_non_nullable
              as CreationMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoucherCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$_VoucherCopyWith(
          _$_Voucher value, $Res Function(_$_Voucher) then) =
      __$$_VoucherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double latitude,
      double longitude,
      String aim,
      @VoucherTimestampConverter() DateTime timestamp,
      String secret,
      @CreationModeConverter() CreationMode? creationMode});
}

/// @nodoc
class __$$_VoucherCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$_Voucher>
    implements _$$_VoucherCopyWith<$Res> {
  __$$_VoucherCopyWithImpl(_$_Voucher _value, $Res Function(_$_Voucher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? aim = null,
    Object? timestamp = null,
    Object? secret = null,
    Object? creationMode = freezed,
  }) {
    return _then(_$_Voucher(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      creationMode: freezed == creationMode
          ? _value.creationMode
          : creationMode // ignore: cast_nullable_to_non_nullable
              as CreationMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Voucher implements _Voucher {
  const _$_Voucher(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.aim,
      @VoucherTimestampConverter() required this.timestamp,
      required this.secret,
      @CreationModeConverter() this.creationMode});

  factory _$_Voucher.fromJson(Map<String, dynamic> json) =>
      _$$_VoucherFromJson(json);

  @override
  final String id;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String aim;
  @override
  @VoucherTimestampConverter()
  final DateTime timestamp;
  @override
  final String secret;
  @override
  @CreationModeConverter()
  final CreationMode? creationMode;

  @override
  String toString() {
    return 'Voucher(id: $id, latitude: $latitude, longitude: $longitude, aim: $aim, timestamp: $timestamp, secret: $secret, creationMode: $creationMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voucher &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.aim, aim) || other.aim == aim) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.creationMode, creationMode) ||
                other.creationMode == creationMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude, aim,
      timestamp, secret, creationMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      __$$_VoucherCopyWithImpl<_$_Voucher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoucherToJson(
      this,
    );
  }
}

abstract class _Voucher implements Voucher {
  const factory _Voucher(
      {required final String id,
      required final double latitude,
      required final double longitude,
      required final String aim,
      @VoucherTimestampConverter() required final DateTime timestamp,
      required final String secret,
      @CreationModeConverter() final CreationMode? creationMode}) = _$_Voucher;

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$_Voucher.fromJson;

  @override
  String get id;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get aim;
  @override
  @VoucherTimestampConverter()
  DateTime get timestamp;
  @override
  String get secret;
  @override
  @CreationModeConverter()
  CreationMode? get creationMode;
  @override
  @JsonKey(ignore: true)
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      throw _privateConstructorUsedError;
}
