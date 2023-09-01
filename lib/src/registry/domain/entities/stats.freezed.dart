// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$InstrumentVoucherStatsCopyWithImpl<$Res, InstrumentVoucherStats>;
  @useResult
  $Res call({int totalVouchersGenerated, int totalVouchersRedeemed});
}

/// @nodoc
class _$InstrumentVoucherStatsCopyWithImpl<$Res,
        $Val extends InstrumentVoucherStats>
    implements $InstrumentVoucherStatsCopyWith<$Res> {
  _$InstrumentVoucherStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalVouchersGenerated = null,
    Object? totalVouchersRedeemed = null,
  }) {
    return _then(_value.copyWith(
      totalVouchersGenerated: null == totalVouchersGenerated
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersRedeemed: null == totalVouchersRedeemed
          ? _value.totalVouchersRedeemed
          : totalVouchersRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstrumentVoucherStatsCopyWith<$Res>
    implements $InstrumentVoucherStatsCopyWith<$Res> {
  factory _$$_InstrumentVoucherStatsCopyWith(_$_InstrumentVoucherStats value,
          $Res Function(_$_InstrumentVoucherStats) then) =
      __$$_InstrumentVoucherStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalVouchersGenerated, int totalVouchersRedeemed});
}

/// @nodoc
class __$$_InstrumentVoucherStatsCopyWithImpl<$Res>
    extends _$InstrumentVoucherStatsCopyWithImpl<$Res,
        _$_InstrumentVoucherStats>
    implements _$$_InstrumentVoucherStatsCopyWith<$Res> {
  __$$_InstrumentVoucherStatsCopyWithImpl(_$_InstrumentVoucherStats _value,
      $Res Function(_$_InstrumentVoucherStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalVouchersGenerated = null,
    Object? totalVouchersRedeemed = null,
  }) {
    return _then(_$_InstrumentVoucherStats(
      null == totalVouchersGenerated
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalVouchersRedeemed
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
        (other.runtimeType == runtimeType &&
            other is _$_InstrumentVoucherStats &&
            (identical(other.totalVouchersGenerated, totalVouchersGenerated) ||
                other.totalVouchersGenerated == totalVouchersGenerated) &&
            (identical(other.totalVouchersRedeemed, totalVouchersRedeemed) ||
                other.totalVouchersRedeemed == totalVouchersRedeemed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalVouchersGenerated, totalVouchersRedeemed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstrumentVoucherStatsCopyWith<_$_InstrumentVoucherStats> get copyWith =>
      __$$_InstrumentVoucherStatsCopyWithImpl<_$_InstrumentVoucherStats>(
          this, _$identity);
}

abstract class _InstrumentVoucherStats implements InstrumentVoucherStats {
  factory _InstrumentVoucherStats(
          final int totalVouchersGenerated, final int totalVouchersRedeemed) =
      _$_InstrumentVoucherStats;

  @override
  int get totalVouchersGenerated;
  @override
  int get totalVouchersRedeemed;
  @override
  @JsonKey(ignore: true)
  _$$_InstrumentVoucherStatsCopyWith<_$_InstrumentVoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}
