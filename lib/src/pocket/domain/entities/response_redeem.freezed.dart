// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_redeem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseRedeem _$ResponseRedeemFromJson(Map<String, dynamic> json) {
  return _ResponseRedeem.fromJson(json);
}

/// @nodoc
mixin _$ResponseRedeem {
  List<Voucher> get vouchers => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRedeemCopyWith<ResponseRedeem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRedeemCopyWith<$Res> {
  factory $ResponseRedeemCopyWith(
          ResponseRedeem value, $Res Function(ResponseRedeem) then) =
      _$ResponseRedeemCopyWithImpl<$Res, ResponseRedeem>;
  @useResult
  $Res call({List<Voucher> vouchers, String sourceName, String sourceId});
}

/// @nodoc
class _$ResponseRedeemCopyWithImpl<$Res, $Val extends ResponseRedeem>
    implements $ResponseRedeemCopyWith<$Res> {
  _$ResponseRedeemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vouchers = null,
    Object? sourceName = null,
    Object? sourceId = null,
  }) {
    return _then(_value.copyWith(
      vouchers: null == vouchers
          ? _value.vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseRedeemCopyWith<$Res>
    implements $ResponseRedeemCopyWith<$Res> {
  factory _$$_ResponseRedeemCopyWith(
          _$_ResponseRedeem value, $Res Function(_$_ResponseRedeem) then) =
      __$$_ResponseRedeemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Voucher> vouchers, String sourceName, String sourceId});
}

/// @nodoc
class __$$_ResponseRedeemCopyWithImpl<$Res>
    extends _$ResponseRedeemCopyWithImpl<$Res, _$_ResponseRedeem>
    implements _$$_ResponseRedeemCopyWith<$Res> {
  __$$_ResponseRedeemCopyWithImpl(
      _$_ResponseRedeem _value, $Res Function(_$_ResponseRedeem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vouchers = null,
    Object? sourceName = null,
    Object? sourceId = null,
  }) {
    return _then(_$_ResponseRedeem(
      vouchers: null == vouchers
          ? _value._vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseRedeem implements _ResponseRedeem {
  const _$_ResponseRedeem(
      {required final List<Voucher> vouchers,
      required this.sourceName,
      required this.sourceId})
      : _vouchers = vouchers;

  factory _$_ResponseRedeem.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseRedeemFromJson(json);

  final List<Voucher> _vouchers;
  @override
  List<Voucher> get vouchers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vouchers);
  }

  @override
  final String sourceName;
  @override
  final String sourceId;

  @override
  String toString() {
    return 'ResponseRedeem(vouchers: $vouchers, sourceName: $sourceName, sourceId: $sourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseRedeem &&
            const DeepCollectionEquality().equals(other._vouchers, _vouchers) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_vouchers), sourceName, sourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseRedeemCopyWith<_$_ResponseRedeem> get copyWith =>
      __$$_ResponseRedeemCopyWithImpl<_$_ResponseRedeem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseRedeemToJson(
      this,
    );
  }
}

abstract class _ResponseRedeem implements ResponseRedeem {
  const factory _ResponseRedeem(
      {required final List<Voucher> vouchers,
      required final String sourceName,
      required final String sourceId}) = _$_ResponseRedeem;

  factory _ResponseRedeem.fromJson(Map<String, dynamic> json) =
      _$_ResponseRedeem.fromJson;

  @override
  List<Voucher> get vouchers;
  @override
  String get sourceName;
  @override
  String get sourceId;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseRedeemCopyWith<_$_ResponseRedeem> get copyWith =>
      throw _privateConstructorUsedError;
}
