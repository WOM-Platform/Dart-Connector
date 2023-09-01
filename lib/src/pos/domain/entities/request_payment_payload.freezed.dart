// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_payment_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestPaymentPayload _$RequestPaymentPayloadFromJson(
    Map<String, dynamic> json) {
  return _RequestPaymentPayload.fromJson(json);
}

/// @nodoc
mixin _$RequestPaymentPayload {
  int get amount => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get posId => throw _privateConstructorUsedError;
  bool get persistent => throw _privateConstructorUsedError;
  String? get pocketAckUrl => throw _privateConstructorUsedError;
  SimpleFilter? get simpleFilter => throw _privateConstructorUsedError;
  String? get posAckUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPaymentPayloadCopyWith<RequestPaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPaymentPayloadCopyWith<$Res> {
  factory $RequestPaymentPayloadCopyWith(RequestPaymentPayload value,
          $Res Function(RequestPaymentPayload) then) =
      _$RequestPaymentPayloadCopyWithImpl<$Res, RequestPaymentPayload>;
  @useResult
  $Res call(
      {int amount,
      String nonce,
      String posId,
      bool persistent,
      String? pocketAckUrl,
      SimpleFilter? simpleFilter,
      String? posAckUrl});

  $SimpleFilterCopyWith<$Res>? get simpleFilter;
}

/// @nodoc
class _$RequestPaymentPayloadCopyWithImpl<$Res,
        $Val extends RequestPaymentPayload>
    implements $RequestPaymentPayloadCopyWith<$Res> {
  _$RequestPaymentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? nonce = null,
    Object? posId = null,
    Object? persistent = null,
    Object? pocketAckUrl = freezed,
    Object? simpleFilter = freezed,
    Object? posAckUrl = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      persistent: null == persistent
          ? _value.persistent
          : persistent // ignore: cast_nullable_to_non_nullable
              as bool,
      pocketAckUrl: freezed == pocketAckUrl
          ? _value.pocketAckUrl
          : pocketAckUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      simpleFilter: freezed == simpleFilter
          ? _value.simpleFilter
          : simpleFilter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      posAckUrl: freezed == posAckUrl
          ? _value.posAckUrl
          : posAckUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleFilterCopyWith<$Res>? get simpleFilter {
    if (_value.simpleFilter == null) {
      return null;
    }

    return $SimpleFilterCopyWith<$Res>(_value.simpleFilter!, (value) {
      return _then(_value.copyWith(simpleFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequestPaymentPayloadCopyWith<$Res>
    implements $RequestPaymentPayloadCopyWith<$Res> {
  factory _$$_RequestPaymentPayloadCopyWith(_$_RequestPaymentPayload value,
          $Res Function(_$_RequestPaymentPayload) then) =
      __$$_RequestPaymentPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      String nonce,
      String posId,
      bool persistent,
      String? pocketAckUrl,
      SimpleFilter? simpleFilter,
      String? posAckUrl});

  @override
  $SimpleFilterCopyWith<$Res>? get simpleFilter;
}

/// @nodoc
class __$$_RequestPaymentPayloadCopyWithImpl<$Res>
    extends _$RequestPaymentPayloadCopyWithImpl<$Res, _$_RequestPaymentPayload>
    implements _$$_RequestPaymentPayloadCopyWith<$Res> {
  __$$_RequestPaymentPayloadCopyWithImpl(_$_RequestPaymentPayload _value,
      $Res Function(_$_RequestPaymentPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? nonce = null,
    Object? posId = null,
    Object? persistent = null,
    Object? pocketAckUrl = freezed,
    Object? simpleFilter = freezed,
    Object? posAckUrl = freezed,
  }) {
    return _then(_$_RequestPaymentPayload(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      persistent: null == persistent
          ? _value.persistent
          : persistent // ignore: cast_nullable_to_non_nullable
              as bool,
      pocketAckUrl: freezed == pocketAckUrl
          ? _value.pocketAckUrl
          : pocketAckUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      simpleFilter: freezed == simpleFilter
          ? _value.simpleFilter
          : simpleFilter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      posAckUrl: freezed == posAckUrl
          ? _value.posAckUrl
          : posAckUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestPaymentPayload implements _RequestPaymentPayload {
  const _$_RequestPaymentPayload(
      {required this.amount,
      required this.nonce,
      required this.posId,
      this.persistent = false,
      this.pocketAckUrl,
      this.simpleFilter,
      this.posAckUrl});

  factory _$_RequestPaymentPayload.fromJson(Map<String, dynamic> json) =>
      _$$_RequestPaymentPayloadFromJson(json);

  @override
  final int amount;
  @override
  final String nonce;
  @override
  final String posId;
  @override
  @JsonKey()
  final bool persistent;
  @override
  final String? pocketAckUrl;
  @override
  final SimpleFilter? simpleFilter;
  @override
  final String? posAckUrl;

  @override
  String toString() {
    return 'RequestPaymentPayload(amount: $amount, nonce: $nonce, posId: $posId, persistent: $persistent, pocketAckUrl: $pocketAckUrl, simpleFilter: $simpleFilter, posAckUrl: $posAckUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestPaymentPayload &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.posId, posId) || other.posId == posId) &&
            (identical(other.persistent, persistent) ||
                other.persistent == persistent) &&
            (identical(other.pocketAckUrl, pocketAckUrl) ||
                other.pocketAckUrl == pocketAckUrl) &&
            (identical(other.simpleFilter, simpleFilter) ||
                other.simpleFilter == simpleFilter) &&
            (identical(other.posAckUrl, posAckUrl) ||
                other.posAckUrl == posAckUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, nonce, posId, persistent,
      pocketAckUrl, simpleFilter, posAckUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestPaymentPayloadCopyWith<_$_RequestPaymentPayload> get copyWith =>
      __$$_RequestPaymentPayloadCopyWithImpl<_$_RequestPaymentPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestPaymentPayloadToJson(
      this,
    );
  }
}

abstract class _RequestPaymentPayload implements RequestPaymentPayload {
  const factory _RequestPaymentPayload(
      {required final int amount,
      required final String nonce,
      required final String posId,
      final bool persistent,
      final String? pocketAckUrl,
      final SimpleFilter? simpleFilter,
      final String? posAckUrl}) = _$_RequestPaymentPayload;

  factory _RequestPaymentPayload.fromJson(Map<String, dynamic> json) =
      _$_RequestPaymentPayload.fromJson;

  @override
  int get amount;
  @override
  String get nonce;
  @override
  String get posId;
  @override
  bool get persistent;
  @override
  String? get pocketAckUrl;
  @override
  SimpleFilter? get simpleFilter;
  @override
  String? get posAckUrl;
  @override
  @JsonKey(ignore: true)
  _$$_RequestPaymentPayloadCopyWith<_$_RequestPaymentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
