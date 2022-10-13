// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Aim {
  String get code => throw _privateConstructorUsedError;
  Map<String, dynamic>? get titles => throw _privateConstructorUsedError;
  List<Aim>? get children => throw _privateConstructorUsedError;
  String? get iconFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AimCopyWith<Aim> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AimCopyWith<$Res> {
  factory $AimCopyWith(Aim value, $Res Function(Aim) then) =
      _$AimCopyWithImpl<$Res>;
  $Res call(
      {String code,
      Map<String, dynamic>? titles,
      List<Aim>? children,
      String? iconFile});
}

/// @nodoc
class _$AimCopyWithImpl<$Res> implements $AimCopyWith<$Res> {
  _$AimCopyWithImpl(this._value, this._then);

  final Aim _value;
  // ignore: unused_field
  final $Res Function(Aim) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? titles = freezed,
    Object? children = freezed,
    Object? iconFile = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titles: titles == freezed
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Aim>?,
      iconFile: iconFile == freezed
          ? _value.iconFile
          : iconFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AimCopyWith<$Res> implements $AimCopyWith<$Res> {
  factory _$$_AimCopyWith(_$_Aim value, $Res Function(_$_Aim) then) =
      __$$_AimCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      Map<String, dynamic>? titles,
      List<Aim>? children,
      String? iconFile});
}

/// @nodoc
class __$$_AimCopyWithImpl<$Res> extends _$AimCopyWithImpl<$Res>
    implements _$$_AimCopyWith<$Res> {
  __$$_AimCopyWithImpl(_$_Aim _value, $Res Function(_$_Aim) _then)
      : super(_value, (v) => _then(v as _$_Aim));

  @override
  _$_Aim get _value => super._value as _$_Aim;

  @override
  $Res call({
    Object? code = freezed,
    Object? titles = freezed,
    Object? children = freezed,
    Object? iconFile = freezed,
  }) {
    return _then(_$_Aim(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titles: titles == freezed
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Aim>?,
      iconFile: iconFile == freezed
          ? _value.iconFile
          : iconFile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Aim implements _Aim {
  const _$_Aim(
      {required this.code,
      required final Map<String, dynamic>? titles,
      final List<Aim>? children,
      this.iconFile})
      : _titles = titles,
        _children = children;

  @override
  final String code;
  final Map<String, dynamic>? _titles;
  @override
  Map<String, dynamic>? get titles {
    final value = _titles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<Aim>? _children;
  @override
  List<Aim>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? iconFile;

  @override
  String toString() {
    return 'Aim(code: $code, titles: $titles, children: $children, iconFile: $iconFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Aim &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other._titles, _titles) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other.iconFile, iconFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(_titles),
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(iconFile));

  @JsonKey(ignore: true)
  @override
  _$$_AimCopyWith<_$_Aim> get copyWith =>
      __$$_AimCopyWithImpl<_$_Aim>(this, _$identity);
}

abstract class _Aim implements Aim {
  const factory _Aim(
      {required final String code,
      required final Map<String, dynamic>? titles,
      final List<Aim>? children,
      final String? iconFile}) = _$_Aim;

  @override
  String get code;
  @override
  Map<String, dynamic>? get titles;
  @override
  List<Aim>? get children;
  @override
  String? get iconFile;
  @override
  @JsonKey(ignore: true)
  _$$_AimCopyWith<_$_Aim> get copyWith => throw _privateConstructorUsedError;
}
