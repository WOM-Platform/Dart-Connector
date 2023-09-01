// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleFilter _$SimpleFilterFromJson(Map<String, dynamic> json) {
  return _SimpleFilter.fromJson(json);
}

/// @nodoc
mixin _$SimpleFilter {
  String? get aim => throw _privateConstructorUsedError;
  Bounds? get bounds => throw _privateConstructorUsedError;
  int? get maxAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleFilterCopyWith<SimpleFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleFilterCopyWith<$Res> {
  factory $SimpleFilterCopyWith(
          SimpleFilter value, $Res Function(SimpleFilter) then) =
      _$SimpleFilterCopyWithImpl<$Res, SimpleFilter>;
  @useResult
  $Res call({String? aim, Bounds? bounds, int? maxAge});

  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$SimpleFilterCopyWithImpl<$Res, $Val extends SimpleFilter>
    implements $SimpleFilterCopyWith<$Res> {
  _$SimpleFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aim = freezed,
    Object? bounds = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_value.copyWith(
      aim: freezed == aim
          ? _value.aim
          : aim // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SimpleFilterCopyWith<$Res>
    implements $SimpleFilterCopyWith<$Res> {
  factory _$$_SimpleFilterCopyWith(
          _$_SimpleFilter value, $Res Function(_$_SimpleFilter) then) =
      __$$_SimpleFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? aim, Bounds? bounds, int? maxAge});

  @override
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$$_SimpleFilterCopyWithImpl<$Res>
    extends _$SimpleFilterCopyWithImpl<$Res, _$_SimpleFilter>
    implements _$$_SimpleFilterCopyWith<$Res> {
  __$$_SimpleFilterCopyWithImpl(
      _$_SimpleFilter _value, $Res Function(_$_SimpleFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aim = freezed,
    Object? bounds = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_$_SimpleFilter(
      aim: freezed == aim
          ? _value.aim
          : aim // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimpleFilter implements _SimpleFilter {
  const _$_SimpleFilter({this.aim, this.bounds, this.maxAge});

  factory _$_SimpleFilter.fromJson(Map<String, dynamic> json) =>
      _$$_SimpleFilterFromJson(json);

  @override
  final String? aim;
  @override
  final Bounds? bounds;
  @override
  final int? maxAge;

  @override
  String toString() {
    return 'SimpleFilter(aim: $aim, bounds: $bounds, maxAge: $maxAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleFilter &&
            (identical(other.aim, aim) || other.aim == aim) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aim, bounds, maxAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimpleFilterCopyWith<_$_SimpleFilter> get copyWith =>
      __$$_SimpleFilterCopyWithImpl<_$_SimpleFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimpleFilterToJson(
      this,
    );
  }
}

abstract class _SimpleFilter implements SimpleFilter {
  const factory _SimpleFilter(
      {final String? aim,
      final Bounds? bounds,
      final int? maxAge}) = _$_SimpleFilter;

  factory _SimpleFilter.fromJson(Map<String, dynamic> json) =
      _$_SimpleFilter.fromJson;

  @override
  String? get aim;
  @override
  Bounds? get bounds;
  @override
  int? get maxAge;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleFilterCopyWith<_$_SimpleFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
