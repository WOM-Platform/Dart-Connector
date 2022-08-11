// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$POSMap {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Position get position => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $POSMapCopyWith<POSMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSMapCopyWith<$Res> {
  factory $POSMapCopyWith(POSMap value, $Res Function(POSMap) then) =
      _$POSMapCopyWithImpl<$Res>;
  $Res call({String id, String name, Position position, String? url});

  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$POSMapCopyWithImpl<$Res> implements $POSMapCopyWith<$Res> {
  _$POSMapCopyWithImpl(this._value, this._then);

  final POSMap _value;
  // ignore: unused_field
  final $Res Function(POSMap) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PositionCopyWith<$Res> get position {
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$$_POSMapCopyWith<$Res> implements $POSMapCopyWith<$Res> {
  factory _$$_POSMapCopyWith(_$_POSMap value, $Res Function(_$_POSMap) then) =
      __$$_POSMapCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Position position, String? url});

  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$_POSMapCopyWithImpl<$Res> extends _$POSMapCopyWithImpl<$Res>
    implements _$$_POSMapCopyWith<$Res> {
  __$$_POSMapCopyWithImpl(_$_POSMap _value, $Res Function(_$_POSMap) _then)
      : super(_value, (v) => _then(v as _$_POSMap));

  @override
  _$_POSMap get _value => super._value as _$_POSMap;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_POSMap(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_POSMap implements _POSMap {
  const _$_POSMap(
      {required this.id, required this.name, required this.position, this.url});

  @override
  final String id;
  @override
  final String name;
  @override
  final Position position;
  @override
  final String? url;

  @override
  String toString() {
    return 'POSMap(id: $id, name: $name, position: $position, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_POSMap &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_POSMapCopyWith<_$_POSMap> get copyWith =>
      __$$_POSMapCopyWithImpl<_$_POSMap>(this, _$identity);
}

abstract class _POSMap implements POSMap {
  const factory _POSMap(
      {required final String id,
      required final String name,
      required final Position position,
      final String? url}) = _$_POSMap;

  @override
  String get id;
  @override
  String get name;
  @override
  Position get position;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_POSMapCopyWith<_$_POSMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Position {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$$_PositionCopyWith(
          _$_Position value, $Res Function(_$_Position) then) =
      __$$_PositionCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$$_PositionCopyWith<$Res> {
  __$$_PositionCopyWithImpl(
      _$_Position _value, $Res Function(_$_Position) _then)
      : super(_value, (v) => _then(v as _$_Position));

  @override
  _$_Position get _value => super._value as _$_Position;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_Position(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Position implements _Position {
  const _$_Position({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Position(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Position &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      __$$_PositionCopyWithImpl<_$_Position>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position(
      {required final double latitude,
      required final double longitude}) = _$_Position;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      throw _privateConstructorUsedError;
}
