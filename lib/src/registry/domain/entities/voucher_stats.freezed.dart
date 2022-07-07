// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'voucher_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VoucherStatsTearOff {
  const _$VoucherStatsTearOff();

  _VoucherStats call(
      int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims) {
    return _VoucherStats(
      totalVouchersGenerated,
      totalVouchersRedeemed,
      totalVouchersAvailable,
      totalVouchersSpent,
      aims,
    );
  }
}

/// @nodoc
const $VoucherStats = _$VoucherStatsTearOff();

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
      _$VoucherStatsCopyWithImpl<$Res>;
  $Res call(
      {int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims});
}

/// @nodoc
class _$VoucherStatsCopyWithImpl<$Res> implements $VoucherStatsCopyWith<$Res> {
  _$VoucherStatsCopyWithImpl(this._value, this._then);

  final VoucherStats _value;
  // ignore: unused_field
  final $Res Function(VoucherStats) _then;

  @override
  $Res call({
    Object? totalVouchersGenerated = freezed,
    Object? totalVouchersRedeemed = freezed,
    Object? totalVouchersAvailable = freezed,
    Object? totalVouchersSpent = freezed,
    Object? aims = freezed,
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
      totalVouchersAvailable: totalVouchersAvailable == freezed
          ? _value.totalVouchersAvailable
          : totalVouchersAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersSpent: totalVouchersSpent == freezed
          ? _value.totalVouchersSpent
          : totalVouchersSpent // ignore: cast_nullable_to_non_nullable
              as int,
      aims: aims == freezed
          ? _value.aims
          : aims // ignore: cast_nullable_to_non_nullable
              as Map<String, AimStats>,
    ));
  }
}

/// @nodoc
abstract class _$VoucherStatsCopyWith<$Res>
    implements $VoucherStatsCopyWith<$Res> {
  factory _$VoucherStatsCopyWith(
          _VoucherStats value, $Res Function(_VoucherStats) then) =
      __$VoucherStatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims});
}

/// @nodoc
class __$VoucherStatsCopyWithImpl<$Res> extends _$VoucherStatsCopyWithImpl<$Res>
    implements _$VoucherStatsCopyWith<$Res> {
  __$VoucherStatsCopyWithImpl(
      _VoucherStats _value, $Res Function(_VoucherStats) _then)
      : super(_value, (v) => _then(v as _VoucherStats));

  @override
  _VoucherStats get _value => super._value as _VoucherStats;

  @override
  $Res call({
    Object? totalVouchersGenerated = freezed,
    Object? totalVouchersRedeemed = freezed,
    Object? totalVouchersAvailable = freezed,
    Object? totalVouchersSpent = freezed,
    Object? aims = freezed,
  }) {
    return _then(_VoucherStats(
      totalVouchersGenerated == freezed
          ? _value.totalVouchersGenerated
          : totalVouchersGenerated // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersRedeemed == freezed
          ? _value.totalVouchersRedeemed
          : totalVouchersRedeemed // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersAvailable == freezed
          ? _value.totalVouchersAvailable
          : totalVouchersAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      totalVouchersSpent == freezed
          ? _value.totalVouchersSpent
          : totalVouchersSpent // ignore: cast_nullable_to_non_nullable
              as int,
      aims == freezed
          ? _value.aims
          : aims // ignore: cast_nullable_to_non_nullable
              as Map<String, AimStats>,
    ));
  }
}

/// @nodoc

class _$_VoucherStats implements _VoucherStats {
  _$_VoucherStats(this.totalVouchersGenerated, this.totalVouchersRedeemed,
      this.totalVouchersAvailable, this.totalVouchersSpent, this.aims);

  @override
  final int totalVouchersGenerated;
  @override
  final int totalVouchersRedeemed;
  @override
  final int totalVouchersAvailable;
  @override
  final int totalVouchersSpent;
  @override
  final Map<String, AimStats> aims;

  @override
  String toString() {
    return 'VoucherStats(totalVouchersGenerated: $totalVouchersGenerated, totalVouchersRedeemed: $totalVouchersRedeemed, totalVouchersAvailable: $totalVouchersAvailable, totalVouchersSpent: $totalVouchersSpent, aims: $aims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VoucherStats &&
            (identical(other.totalVouchersGenerated, totalVouchersGenerated) ||
                const DeepCollectionEquality().equals(
                    other.totalVouchersGenerated, totalVouchersGenerated)) &&
            (identical(other.totalVouchersRedeemed, totalVouchersRedeemed) ||
                const DeepCollectionEquality().equals(
                    other.totalVouchersRedeemed, totalVouchersRedeemed)) &&
            (identical(other.totalVouchersAvailable, totalVouchersAvailable) ||
                const DeepCollectionEquality().equals(
                    other.totalVouchersAvailable, totalVouchersAvailable)) &&
            (identical(other.totalVouchersSpent, totalVouchersSpent) ||
                const DeepCollectionEquality()
                    .equals(other.totalVouchersSpent, totalVouchersSpent)) &&
            (identical(other.aims, aims) ||
                const DeepCollectionEquality().equals(other.aims, aims)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalVouchersGenerated) ^
      const DeepCollectionEquality().hash(totalVouchersRedeemed) ^
      const DeepCollectionEquality().hash(totalVouchersAvailable) ^
      const DeepCollectionEquality().hash(totalVouchersSpent) ^
      const DeepCollectionEquality().hash(aims);

  @JsonKey(ignore: true)
  @override
  _$VoucherStatsCopyWith<_VoucherStats> get copyWith =>
      __$VoucherStatsCopyWithImpl<_VoucherStats>(this, _$identity);
}

abstract class _VoucherStats implements VoucherStats {
  factory _VoucherStats(
      int totalVouchersGenerated,
      int totalVouchersRedeemed,
      int totalVouchersAvailable,
      int totalVouchersSpent,
      Map<String, AimStats> aims) = _$_VoucherStats;

  @override
  int get totalVouchersGenerated => throw _privateConstructorUsedError;
  @override
  int get totalVouchersRedeemed => throw _privateConstructorUsedError;
  @override
  int get totalVouchersAvailable => throw _privateConstructorUsedError;
  @override
  int get totalVouchersSpent => throw _privateConstructorUsedError;
  @override
  Map<String, AimStats> get aims => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VoucherStatsCopyWith<_VoucherStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AimStatsTearOff {
  const _$AimStatsTearOff();

  _AimStats call(int generated, int redeemed, int available, int spent) {
    return _AimStats(
      generated,
      redeemed,
      available,
      spent,
    );
  }
}

/// @nodoc
const $AimStats = _$AimStatsTearOff();

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
      _$AimStatsCopyWithImpl<$Res>;
  $Res call({int generated, int redeemed, int available, int spent});
}

/// @nodoc
class _$AimStatsCopyWithImpl<$Res> implements $AimStatsCopyWith<$Res> {
  _$AimStatsCopyWithImpl(this._value, this._then);

  final AimStats _value;
  // ignore: unused_field
  final $Res Function(AimStats) _then;

  @override
  $Res call({
    Object? generated = freezed,
    Object? redeemed = freezed,
    Object? available = freezed,
    Object? spent = freezed,
  }) {
    return _then(_value.copyWith(
      generated: generated == freezed
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      redeemed: redeemed == freezed
          ? _value.redeemed
          : redeemed // ignore: cast_nullable_to_non_nullable
              as int,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      spent: spent == freezed
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AimStatsCopyWith<$Res> implements $AimStatsCopyWith<$Res> {
  factory _$AimStatsCopyWith(_AimStats value, $Res Function(_AimStats) then) =
      __$AimStatsCopyWithImpl<$Res>;
  @override
  $Res call({int generated, int redeemed, int available, int spent});
}

/// @nodoc
class __$AimStatsCopyWithImpl<$Res> extends _$AimStatsCopyWithImpl<$Res>
    implements _$AimStatsCopyWith<$Res> {
  __$AimStatsCopyWithImpl(_AimStats _value, $Res Function(_AimStats) _then)
      : super(_value, (v) => _then(v as _AimStats));

  @override
  _AimStats get _value => super._value as _AimStats;

  @override
  $Res call({
    Object? generated = freezed,
    Object? redeemed = freezed,
    Object? available = freezed,
    Object? spent = freezed,
  }) {
    return _then(_AimStats(
      generated == freezed
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      redeemed == freezed
          ? _value.redeemed
          : redeemed // ignore: cast_nullable_to_non_nullable
              as int,
      available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      spent == freezed
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
        (other is _AimStats &&
            (identical(other.generated, generated) ||
                const DeepCollectionEquality()
                    .equals(other.generated, generated)) &&
            (identical(other.redeemed, redeemed) ||
                const DeepCollectionEquality()
                    .equals(other.redeemed, redeemed)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.spent, spent) ||
                const DeepCollectionEquality().equals(other.spent, spent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(generated) ^
      const DeepCollectionEquality().hash(redeemed) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(spent);

  @JsonKey(ignore: true)
  @override
  _$AimStatsCopyWith<_AimStats> get copyWith =>
      __$AimStatsCopyWithImpl<_AimStats>(this, _$identity);
}

abstract class _AimStats implements AimStats {
  factory _AimStats(int generated, int redeemed, int available, int spent) =
      _$_AimStats;

  @override
  int get generated => throw _privateConstructorUsedError;
  @override
  int get redeemed => throw _privateConstructorUsedError;
  @override
  int get available => throw _privateConstructorUsedError;
  @override
  int get spent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AimStatsCopyWith<_AimStats> get copyWith =>
      throw _privateConstructorUsedError;
}
