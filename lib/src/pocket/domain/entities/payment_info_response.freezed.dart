// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentInfoResponse _$PaymentInfoResponseFromJson(Map<String, dynamic> json) {
  return _PaymentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfoResponse {
  String get posId => throw _privateConstructorUsedError;
  String get posName => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  SimpleFilter? get simpleFilter => throw _privateConstructorUsedError;
  bool? get persistent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentInfoResponseCopyWith<PaymentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoResponseCopyWith<$Res> {
  factory $PaymentInfoResponseCopyWith(
          PaymentInfoResponse value, $Res Function(PaymentInfoResponse) then) =
      _$PaymentInfoResponseCopyWithImpl<$Res, PaymentInfoResponse>;
  @useResult
  $Res call(
      {String posId,
      String posName,
      int amount,
      SimpleFilter? simpleFilter,
      bool? persistent});

  $SimpleFilterCopyWith<$Res>? get simpleFilter;
}

/// @nodoc
class _$PaymentInfoResponseCopyWithImpl<$Res, $Val extends PaymentInfoResponse>
    implements $PaymentInfoResponseCopyWith<$Res> {
  _$PaymentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? posName = null,
    Object? amount = null,
    Object? simpleFilter = freezed,
    Object? persistent = freezed,
  }) {
    return _then(_value.copyWith(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      posName: null == posName
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      simpleFilter: freezed == simpleFilter
          ? _value.simpleFilter
          : simpleFilter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      persistent: freezed == persistent
          ? _value.persistent
          : persistent // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_PaymentInfoResponseCopyWith<$Res>
    implements $PaymentInfoResponseCopyWith<$Res> {
  factory _$$_PaymentInfoResponseCopyWith(_$_PaymentInfoResponse value,
          $Res Function(_$_PaymentInfoResponse) then) =
      __$$_PaymentInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String posId,
      String posName,
      int amount,
      SimpleFilter? simpleFilter,
      bool? persistent});

  @override
  $SimpleFilterCopyWith<$Res>? get simpleFilter;
}

/// @nodoc
class __$$_PaymentInfoResponseCopyWithImpl<$Res>
    extends _$PaymentInfoResponseCopyWithImpl<$Res, _$_PaymentInfoResponse>
    implements _$$_PaymentInfoResponseCopyWith<$Res> {
  __$$_PaymentInfoResponseCopyWithImpl(_$_PaymentInfoResponse _value,
      $Res Function(_$_PaymentInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? posName = null,
    Object? amount = null,
    Object? simpleFilter = freezed,
    Object? persistent = freezed,
  }) {
    return _then(_$_PaymentInfoResponse(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      posName: null == posName
          ? _value.posName
          : posName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      simpleFilter: freezed == simpleFilter
          ? _value.simpleFilter
          : simpleFilter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      persistent: freezed == persistent
          ? _value.persistent
          : persistent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentInfoResponse implements _PaymentInfoResponse {
  const _$_PaymentInfoResponse(
      {required this.posId,
      required this.posName,
      required this.amount,
      required this.simpleFilter,
      required this.persistent});

  factory _$_PaymentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentInfoResponseFromJson(json);

  @override
  final String posId;
  @override
  final String posName;
  @override
  final int amount;
  @override
  final SimpleFilter? simpleFilter;
  @override
  final bool? persistent;

  @override
  String toString() {
    return 'PaymentInfoResponse(posId: $posId, posName: $posName, amount: $amount, simpleFilter: $simpleFilter, persistent: $persistent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentInfoResponse &&
            (identical(other.posId, posId) || other.posId == posId) &&
            (identical(other.posName, posName) || other.posName == posName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.simpleFilter, simpleFilter) ||
                other.simpleFilter == simpleFilter) &&
            (identical(other.persistent, persistent) ||
                other.persistent == persistent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, posId, posName, amount, simpleFilter, persistent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentInfoResponseCopyWith<_$_PaymentInfoResponse> get copyWith =>
      __$$_PaymentInfoResponseCopyWithImpl<_$_PaymentInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentInfoResponseToJson(
      this,
    );
  }
}

abstract class _PaymentInfoResponse implements PaymentInfoResponse {
  const factory _PaymentInfoResponse(
      {required final String posId,
      required final String posName,
      required final int amount,
      required final SimpleFilter? simpleFilter,
      required final bool? persistent}) = _$_PaymentInfoResponse;

  factory _PaymentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentInfoResponse.fromJson;

  @override
  String get posId;
  @override
  String get posName;
  @override
  int get amount;
  @override
  SimpleFilter? get simpleFilter;
  @override
  bool? get persistent;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentInfoResponseCopyWith<_$_PaymentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
