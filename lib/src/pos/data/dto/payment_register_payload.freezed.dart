// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_register_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentRegisterPayload _$PaymentRegisterPayloadFromJson(
    Map<String, dynamic> json) {
  return _PaymentRegisterPayload.fromJson(json);
}

/// @nodoc
mixin _$PaymentRegisterPayload {
  String get payload => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get posId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRegisterPayloadCopyWith<PaymentRegisterPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRegisterPayloadCopyWith<$Res> {
  factory $PaymentRegisterPayloadCopyWith(PaymentRegisterPayload value,
          $Res Function(PaymentRegisterPayload) then) =
      _$PaymentRegisterPayloadCopyWithImpl<$Res, PaymentRegisterPayload>;
  @useResult
  $Res call({String payload, String nonce, String posId});
}

/// @nodoc
class _$PaymentRegisterPayloadCopyWithImpl<$Res,
        $Val extends PaymentRegisterPayload>
    implements $PaymentRegisterPayloadCopyWith<$Res> {
  _$PaymentRegisterPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? nonce = null,
    Object? posId = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentRegisterPayloadCopyWith<$Res>
    implements $PaymentRegisterPayloadCopyWith<$Res> {
  factory _$$_PaymentRegisterPayloadCopyWith(_$_PaymentRegisterPayload value,
          $Res Function(_$_PaymentRegisterPayload) then) =
      __$$_PaymentRegisterPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payload, String nonce, String posId});
}

/// @nodoc
class __$$_PaymentRegisterPayloadCopyWithImpl<$Res>
    extends _$PaymentRegisterPayloadCopyWithImpl<$Res,
        _$_PaymentRegisterPayload>
    implements _$$_PaymentRegisterPayloadCopyWith<$Res> {
  __$$_PaymentRegisterPayloadCopyWithImpl(_$_PaymentRegisterPayload _value,
      $Res Function(_$_PaymentRegisterPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? nonce = null,
    Object? posId = null,
  }) {
    return _then(_$_PaymentRegisterPayload(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentRegisterPayload implements _PaymentRegisterPayload {
  const _$_PaymentRegisterPayload(
      {required this.payload, required this.nonce, required this.posId});

  factory _$_PaymentRegisterPayload.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentRegisterPayloadFromJson(json);

  @override
  final String payload;
  @override
  final String nonce;
  @override
  final String posId;

  @override
  String toString() {
    return 'PaymentRegisterPayload(payload: $payload, nonce: $nonce, posId: $posId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentRegisterPayload &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.posId, posId) || other.posId == posId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload, nonce, posId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentRegisterPayloadCopyWith<_$_PaymentRegisterPayload> get copyWith =>
      __$$_PaymentRegisterPayloadCopyWithImpl<_$_PaymentRegisterPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentRegisterPayloadToJson(
      this,
    );
  }
}

abstract class _PaymentRegisterPayload implements PaymentRegisterPayload {
  const factory _PaymentRegisterPayload(
      {required final String payload,
      required final String nonce,
      required final String posId}) = _$_PaymentRegisterPayload;

  factory _PaymentRegisterPayload.fromJson(Map<String, dynamic> json) =
      _$_PaymentRegisterPayload.fromJson;

  @override
  String get payload;
  @override
  String get nonce;
  @override
  String get posId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentRegisterPayloadCopyWith<_$_PaymentRegisterPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
