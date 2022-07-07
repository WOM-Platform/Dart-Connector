// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InstrumentVoucherStatsTearOff {
  const _$InstrumentVoucherStatsTearOff();

  _InstrumentVoucherStats call(
      int totalVouchersGenerated, int totalVouchersRedeemed) {
    return _InstrumentVoucherStats(
      totalVouchersGenerated,
      totalVouchersRedeemed,
    );
  }
}

/// @nodoc
const $InstrumentVoucherStats = _$InstrumentVoucherStatsTearOff();

/// @nodoc
mixin _$InstrumentVoucherStats {
  int get totalVouchersGenerated => throw _privateConstructorUsedError;
  int get totalVouchersRedeemed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstrumentVoucherStatsCopyWith<InstrumentVoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentVoucherStatsCopyWith<$Res> {
  factory $InstrumentVoucherStatsCopyWith(InstrumentVoucherStats value,
          $Res Function(InstrumentVoucherStats) then) =
      _$InstrumentVoucherStatsCopyWithImpl<$Res>;
  $Res call({int totalVouchersGenerated, int totalVouchersRedeemed});
}

/// @nodoc
class _$InstrumentVoucherStatsCopyWithImpl<$Res>
    implements $InstrumentVoucherStatsCopyWith<$Res> {
  _$InstrumentVoucherStatsCopyWithImpl(this._value, this._then);

  final InstrumentVoucherStats _value;
  // ignore: unused_field
  final $Res Function(InstrumentVoucherStats) _then;

  @override
  $Res call({
    Object? totalVouchersGenerated = freezed,
    Object? totalVouchersRedeemed = freezed,
  }) {
    return _then(_value.copyWith(
      totalVouchersGenerated: totalVouchersGenerated == freezed
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersRedeemed: totalVouchersRedeemed == freezed
          ? _value.totalVouchersRedeemed
          : totalVouchersRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InstrumentVoucherStatsCopyWith<$Res>
    implements $InstrumentVoucherStatsCopyWith<$Res> {
  factory _$InstrumentVoucherStatsCopyWith(_InstrumentVoucherStats value,
          $Res Function(_InstrumentVoucherStats) then) =
      __$InstrumentVoucherStatsCopyWithImpl<$Res>;
  @override
  $Res call({int totalVouchersGenerated, int totalVouchersRedeemed});
}

/// @nodoc
class __$InstrumentVoucherStatsCopyWithImpl<$Res>
    extends _$InstrumentVoucherStatsCopyWithImpl<$Res>
    implements _$InstrumentVoucherStatsCopyWith<$Res> {
  __$InstrumentVoucherStatsCopyWithImpl(_InstrumentVoucherStats _value,
      $Res Function(_InstrumentVoucherStats) _then)
      : super(_value, (v) => _then(v as _InstrumentVoucherStats));

  @override
  _InstrumentVoucherStats get _value => super._value as _InstrumentVoucherStats;

  @override
  $Res call({
    Object? totalVouchersGenerated = freezed,
    Object? totalVouchersRedeemed = freezed,
  }) {
    return _then(_InstrumentVoucherStats(
      totalVouchersGenerated == freezed
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersRedeemed == freezed
          ? _value.totalVouchersRedeemed
          : totalVouchersRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InstrumentVoucherStats implements _InstrumentVoucherStats {
  _$_InstrumentVoucherStats(
      this.totalVouchersGenerated, this.totalVouchersRedeemed);

  @override
  final int totalVouchersGenerated;
  @override
  final int totalVouchersRedeemed;

  @override
  String toString() {
    return 'InstrumentVoucherStats(totalVouchersGenerated: $totalVouchersGenerated, totalVouchersRedeemed: $totalVouchersRedeemed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InstrumentVoucherStats &&
            (identical(other.totalVouchersGenerated, totalVouchersGenerated) ||
                const DeepCollectionEquality().equals(
                    other.totalVouchersGenerated, totalVouchersGenerated)) &&
            (identical(other.totalVouchersRedeemed, totalVouchersRedeemed) ||
                const DeepCollectionEquality().equals(
                    other.totalVouchersRedeemed, totalVouchersRedeemed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalVouchersGenerated) ^
      const DeepCollectionEquality().hash(totalVouchersRedeemed);

  @JsonKey(ignore: true)
  @override
  _$InstrumentVoucherStatsCopyWith<_InstrumentVoucherStats> get copyWith =>
      __$InstrumentVoucherStatsCopyWithImpl<_InstrumentVoucherStats>(
          this, _$identity);
}

abstract class _InstrumentVoucherStats implements InstrumentVoucherStats {
  factory _InstrumentVoucherStats(
          int totalVouchersGenerated, int totalVouchersRedeemed) =
      _$_InstrumentVoucherStats;

  @override
  int get totalVouchersGenerated => throw _privateConstructorUsedError;
  @override
  int get totalVouchersRedeemed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstrumentVoucherStatsCopyWith<_InstrumentVoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}
