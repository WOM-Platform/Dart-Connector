// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bounds _$BoundsFromJson(Map<String, dynamic> json) {
  return _Bounds.fromJson(json);
}

/// @nodoc
mixin _$Bounds {
  List<double> get leftTop => throw _privateConstructorUsedError;
  List<double> get rightBottom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundsCopyWith<Bounds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsCopyWith<$Res> {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) then) =
      _$BoundsCopyWithImpl<$Res, Bounds>;
  @useResult
  $Res call({List<double> leftTop, List<double> rightBottom});
}

/// @nodoc
class _$BoundsCopyWithImpl<$Res, $Val extends Bounds>
    implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftTop = null,
    Object? rightBottom = null,
  }) {
    return _then(_value.copyWith(
      leftTop: null == leftTop
          ? _value.leftTop
          : leftTop // ignore: cast_nullable_to_non_nullable
              as List<double>,
      rightBottom: null == rightBottom
          ? _value.rightBottom
          : rightBottom // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$$_BoundsCopyWith(_$_Bounds value, $Res Function(_$_Bounds) then) =
      __$$_BoundsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> leftTop, List<double> rightBottom});
}

/// @nodoc
class __$$_BoundsCopyWithImpl<$Res>
    extends _$BoundsCopyWithImpl<$Res, _$_Bounds>
    implements _$$_BoundsCopyWith<$Res> {
  __$$_BoundsCopyWithImpl(_$_Bounds _value, $Res Function(_$_Bounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftTop = null,
    Object? rightBottom = null,
  }) {
    return _then(_$_Bounds(
      leftTop: null == leftTop
          ? _value._leftTop
          : leftTop // ignore: cast_nullable_to_non_nullable
              as List<double>,
      rightBottom: null == rightBottom
          ? _value._rightBottom
          : rightBottom // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bounds implements _Bounds {
  const _$_Bounds(
      {required final List<double> leftTop,
      required final List<double> rightBottom})
      : _leftTop = leftTop,
        _rightBottom = rightBottom;

  factory _$_Bounds.fromJson(Map<String, dynamic> json) =>
      _$$_BoundsFromJson(json);

  final List<double> _leftTop;
  @override
  List<double> get leftTop {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leftTop);
  }

  final List<double> _rightBottom;
  @override
  List<double> get rightBottom {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rightBottom);
  }

  @override
  String toString() {
    return 'Bounds(leftTop: $leftTop, rightBottom: $rightBottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bounds &&
            const DeepCollectionEquality().equals(other._leftTop, _leftTop) &&
            const DeepCollectionEquality()
                .equals(other._rightBottom, _rightBottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leftTop),
      const DeepCollectionEquality().hash(_rightBottom));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      __$$_BoundsCopyWithImpl<_$_Bounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoundsToJson(
      this,
    );
  }
}

abstract class _Bounds implements Bounds {
  const factory _Bounds(
      {required final List<double> leftTop,
      required final List<double> rightBottom}) = _$_Bounds;

  factory _Bounds.fromJson(Map<String, dynamic> json) = _$_Bounds.fromJson;

  @override
  List<double> get leftTop;
  @override
  List<double> get rightBottom;
  @override
  @JsonKey(ignore: true)
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      throw _privateConstructorUsedError;
}
