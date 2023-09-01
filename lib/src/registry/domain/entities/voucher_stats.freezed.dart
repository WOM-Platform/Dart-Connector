// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VoucherStats {
  int get totalVouchersGenerated => throw _privateConstructorUsedError;
  int get totalVouchersRedeemed => throw _privateConstructorUsedError;
  int get totalVouchersAvailable => throw _privateConstructorUsedError;
  int get totalVouchersSpent => throw _privateConstructorUsedError;
  Map<String, AimStats> get aims => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoucherStatsCopyWith<VoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherStatsCopyWith<$Res> {
  factory $VoucherStatsCopyWith(
          VoucherStats value, $Res Function(VoucherStats) then) =
      _$VoucherStatsCopyWithImpl<$Res, VoucherStats>;
  @useResult
  $Res call(
      {int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims});
}

/// @nodoc
class _$VoucherStatsCopyWithImpl<$Res, $Val extends VoucherStats>
    implements $VoucherStatsCopyWith<$Res> {
  _$VoucherStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalVouchersGenerated = null,
    Object? totalVouchersRedeemed = null,
    Object? totalVouchersAvailable = null,
    Object? totalVouchersSpent = null,
    Object? aims = null,
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
      totalVouchersAvailable: null == totalVouchersAvailable
          ? _value.totalVouchersAvailable
          : totalVouchersAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersSpent: null == totalVouchersSpent
          ? _value.totalVouchersSpent
          : totalVouchersSpent // ignore: cast_nullable_to_non_nullable
              as int,
      aims: null == aims
          ? _value.aims
          : aims // ignore: cast_nullable_to_non_nullable
              as Map<String, AimStats>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoucherStatsCopyWith<$Res>
    implements $VoucherStatsCopyWith<$Res> {
  factory _$$_VoucherStatsCopyWith(
          _$_VoucherStats value, $Res Function(_$_VoucherStats) then) =
      __$$_VoucherStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims});
}

/// @nodoc
class __$$_VoucherStatsCopyWithImpl<$Res>
    extends _$VoucherStatsCopyWithImpl<$Res, _$_VoucherStats>
    implements _$$_VoucherStatsCopyWith<$Res> {
  __$$_VoucherStatsCopyWithImpl(
      _$_VoucherStats _value, $Res Function(_$_VoucherStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalVouchersGenerated = null,
    Object? totalVouchersRedeemed = null,
    Object? totalVouchersAvailable = null,
    Object? totalVouchersSpent = null,
    Object? aims = null,
  }) {
    return _then(_$_VoucherStats(
      null == totalVouchersGenerated
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalVouchersRedeemed
          ? _value.totalVouchersRedeemed
          : totalVouchersRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalVouchersAvailable
          ? _value.totalVouchersAvailable
          : totalVouchersAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalVouchersSpent
          ? _value.totalVouchersSpent
          : totalVouchersSpent // ignore: cast_nullable_to_non_nullable
              as int,
      null == aims
          ? _value._aims
          : aims // ignore: cast_nullable_to_non_nullable
              as Map<String, AimStats>,
    ));
  }
}

/// @nodoc

class _$_VoucherStats implements _VoucherStats {
  _$_VoucherStats(
      this.totalVouchersGenerated,
      this.totalVouchersRedeemed,
      this.totalVouchersAvailable,
      this.totalVouchersSpent,
      final Map<String, AimStats> aims)
      : _aims = aims;

  @override
  final int totalVouchersGenerated;
  @override
  final int totalVouchersRedeemed;
  @override
  final int totalVouchersAvailable;
  @override
  final int totalVouchersSpent;
  final Map<String, AimStats> _aims;
  @override
  Map<String, AimStats> get aims {
    if (_aims is EqualUnmodifiableMapView) return _aims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aims);
  }

  @override
  String toString() {
    return 'VoucherStats(totalVouchersGenerated: $totalVouchersGenerated, totalVouchersRedeemed: $totalVouchersRedeemed, totalVouchersAvailable: $totalVouchersAvailable, totalVouchersSpent: $totalVouchersSpent, aims: $aims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoucherStats &&
            (identical(other.totalVouchersGenerated, totalVouchersGenerated) ||
                other.totalVouchersGenerated == totalVouchersGenerated) &&
            (identical(other.totalVouchersRedeemed, totalVouchersRedeemed) ||
                other.totalVouchersRedeemed == totalVouchersRedeemed) &&
            (identical(other.totalVouchersAvailable, totalVouchersAvailable) ||
                other.totalVouchersAvailable == totalVouchersAvailable) &&
            (identical(other.totalVouchersSpent, totalVouchersSpent) ||
                other.totalVouchersSpent == totalVouchersSpent) &&
            const DeepCollectionEquality().equals(other._aims, _aims));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalVouchersGenerated,
      totalVouchersRedeemed,
      totalVouchersAvailable,
      totalVouchersSpent,
      const DeepCollectionEquality().hash(_aims));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoucherStatsCopyWith<_$_VoucherStats> get copyWith =>
      __$$_VoucherStatsCopyWithImpl<_$_VoucherStats>(this, _$identity);
}

abstract class _VoucherStats implements VoucherStats {
  factory _VoucherStats(
      final int totalVouchersGenerated,
      final int totalVouchersRedeemed,
      final int totalVouchersAvailable,
      final int totalVouchersSpent,
      final Map<String, AimStats> aims) = _$_VoucherStats;

  @override
  int get totalVouchersGenerated;
  @override
  int get totalVouchersRedeemed;
  @override
  int get totalVouchersAvailable;
  @override
  int get totalVouchersSpent;
  @override
  Map<String, AimStats> get aims;
  @override
  @JsonKey(ignore: true)
  _$$_VoucherStatsCopyWith<_$_VoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AimStats {
  int get generated => throw _privateConstructorUsedError;
  int get redeemed => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  int get spent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AimStatsCopyWith<AimStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AimStatsCopyWith<$Res> {
  factory $AimStatsCopyWith(AimStats value, $Res Function(AimStats) then) =
      _$AimStatsCopyWithImpl<$Res, AimStats>;
  @useResult
  $Res call({int generated, int redeemed, int available, int spent});
}

/// @nodoc
class _$AimStatsCopyWithImpl<$Res, $Val extends AimStats>
    implements $AimStatsCopyWith<$Res> {
  _$AimStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated = null,
    Object? redeemed = null,
    Object? available = null,
    Object? spent = null,
  }) {
    return _then(_value.copyWith(
      generated: null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      redeemed: null == redeemed
          ? _value.redeemed
          : redeemed // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      spent: null == spent
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AimStatsCopyWith<$Res> implements $AimStatsCopyWith<$Res> {
  factory _$$_AimStatsCopyWith(
          _$_AimStats value, $Res Function(_$_AimStats) then) =
      __$$_AimStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int generated, int redeemed, int available, int spent});
}

/// @nodoc
class __$$_AimStatsCopyWithImpl<$Res>
    extends _$AimStatsCopyWithImpl<$Res, _$_AimStats>
    implements _$$_AimStatsCopyWith<$Res> {
  __$$_AimStatsCopyWithImpl(
      _$_AimStats _value, $Res Function(_$_AimStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generated = null,
    Object? redeemed = null,
    Object? available = null,
    Object? spent = null,
  }) {
    return _then(_$_AimStats(
      null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      null == redeemed
          ? _value.redeemed
          : redeemed // ignore: cast_nullable_to_non_nullable
              as int,
      null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      null == spent
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AimStats implements _AimStats {
  _$_AimStats(this.generated, this.redeemed, this.available, this.spent);

  @override
  final int generated;
  @override
  final int redeemed;
  @override
  final int available;
  @override
  final int spent;

  @override
  String toString() {
    return 'AimStats(generated: $generated, redeemed: $redeemed, available: $available, spent: $spent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AimStats &&
            (identical(other.generated, generated) ||
                other.generated == generated) &&
            (identical(other.redeemed, redeemed) ||
                other.redeemed == redeemed) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.spent, spent) || other.spent == spent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, generated, redeemed, available, spent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AimStatsCopyWith<_$_AimStats> get copyWith =>
      __$$_AimStatsCopyWithImpl<_$_AimStats>(this, _$identity);
}

abstract class _AimStats implements AimStats {
  factory _AimStats(final int generated, final int redeemed,
      final int available, final int spent) = _$_AimStats;

  @override
  int get generated;
  @override
  int get redeemed;
  @override
  int get available;
  @override
  int get spent;
  @override
  @JsonKey(ignore: true)
  _$$_AimStatsCopyWith<_$_AimStats> get copyWith =>
      throw _privateConstructorUsedError;
}
