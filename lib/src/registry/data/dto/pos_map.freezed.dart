// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

POSMapResponseDTO _$POSMapResponseDTOFromJson(Map<String, dynamic> json) {
  return _POSMapResponseDTO.fromJson(json);
}

/// @nodoc
class _$POSMapResponseDTOTearOff {
  const _$POSMapResponseDTOTearOff();

  _POSMapResponseDTO call({required List<POSMapDTO> pos}) {
    return _POSMapResponseDTO(
      pos: pos,
    );
  }

  POSMapResponseDTO fromJson(Map<String, Object> json) {
    return POSMapResponseDTO.fromJson(json);
  }
}

/// @nodoc
const $POSMapResponseDTO = _$POSMapResponseDTOTearOff();

/// @nodoc
mixin _$POSMapResponseDTO {
  List<POSMapDTO> get pos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSMapResponseDTOCopyWith<POSMapResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSMapResponseDTOCopyWith<$Res> {
  factory $POSMapResponseDTOCopyWith(
          POSMapResponseDTO value, $Res Function(POSMapResponseDTO) then) =
      _$POSMapResponseDTOCopyWithImpl<$Res>;
  $Res call({List<POSMapDTO> pos});
}

/// @nodoc
class _$POSMapResponseDTOCopyWithImpl<$Res>
    implements $POSMapResponseDTOCopyWith<$Res> {
  _$POSMapResponseDTOCopyWithImpl(this._value, this._then);

  final POSMapResponseDTO _value;
  // ignore: unused_field
  final $Res Function(POSMapResponseDTO) _then;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_value.copyWith(
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<POSMapDTO>,
    ));
  }
}

/// @nodoc
abstract class _$POSMapResponseDTOCopyWith<$Res>
    implements $POSMapResponseDTOCopyWith<$Res> {
  factory _$POSMapResponseDTOCopyWith(
          _POSMapResponseDTO value, $Res Function(_POSMapResponseDTO) then) =
      __$POSMapResponseDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<POSMapDTO> pos});
}

/// @nodoc
class __$POSMapResponseDTOCopyWithImpl<$Res>
    extends _$POSMapResponseDTOCopyWithImpl<$Res>
    implements _$POSMapResponseDTOCopyWith<$Res> {
  __$POSMapResponseDTOCopyWithImpl(
      _POSMapResponseDTO _value, $Res Function(_POSMapResponseDTO) _then)
      : super(_value, (v) => _then(v as _POSMapResponseDTO));

  @override
  _POSMapResponseDTO get _value => super._value as _POSMapResponseDTO;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_POSMapResponseDTO(
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<POSMapDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSMapResponseDTO implements _POSMapResponseDTO {
  const _$_POSMapResponseDTO({required this.pos});

  factory _$_POSMapResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_POSMapResponseDTOFromJson(json);

  @override
  final List<POSMapDTO> pos;

  @override
  String toString() {
    return 'POSMapResponseDTO(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _POSMapResponseDTO &&
            (identical(other.pos, pos) ||
                const DeepCollectionEquality().equals(other.pos, pos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pos);

  @JsonKey(ignore: true)
  @override
  _$POSMapResponseDTOCopyWith<_POSMapResponseDTO> get copyWith =>
      __$POSMapResponseDTOCopyWithImpl<_POSMapResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMapResponseDTOToJson(this);
  }
}

abstract class _POSMapResponseDTO implements POSMapResponseDTO {
  const factory _POSMapResponseDTO({required List<POSMapDTO> pos}) =
      _$_POSMapResponseDTO;

  factory _POSMapResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_POSMapResponseDTO.fromJson;

  @override
  List<POSMapDTO> get pos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$POSMapResponseDTOCopyWith<_POSMapResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

POSMapDTO _$POSMapDTOFromJson(Map<String, dynamic> json) {
  return _POSMapDTO.fromJson(json);
}

/// @nodoc
class _$POSMapDTOTearOff {
  const _$POSMapDTOTearOff();

  _POSMapDTO call(
      {required String id,
      required String name,
      required PositionDTO position,
      String? url}) {
    return _POSMapDTO(
      id: id,
      name: name,
      position: position,
      url: url,
    );
  }

  POSMapDTO fromJson(Map<String, Object> json) {
    return POSMapDTO.fromJson(json);
  }
}

/// @nodoc
const $POSMapDTO = _$POSMapDTOTearOff();

/// @nodoc
mixin _$POSMapDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PositionDTO get position => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $POSMapDTOCopyWith<POSMapDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POSMapDTOCopyWith<$Res> {
  factory $POSMapDTOCopyWith(POSMapDTO value, $Res Function(POSMapDTO) then) =
      _$POSMapDTOCopyWithImpl<$Res>;
  $Res call({String id, String name, PositionDTO position, String? url});

  $PositionDTOCopyWith<$Res> get position;
}

/// @nodoc
class _$POSMapDTOCopyWithImpl<$Res> implements $POSMapDTOCopyWith<$Res> {
  _$POSMapDTOCopyWithImpl(this._value, this._then);

  final POSMapDTO _value;
  // ignore: unused_field
  final $Res Function(POSMapDTO) _then;

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
              as PositionDTO,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PositionDTOCopyWith<$Res> get position {
    return $PositionDTOCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$POSMapDTOCopyWith<$Res> implements $POSMapDTOCopyWith<$Res> {
  factory _$POSMapDTOCopyWith(
          _POSMapDTO value, $Res Function(_POSMapDTO) then) =
      __$POSMapDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, PositionDTO position, String? url});

  @override
  $PositionDTOCopyWith<$Res> get position;
}

/// @nodoc
class __$POSMapDTOCopyWithImpl<$Res> extends _$POSMapDTOCopyWithImpl<$Res>
    implements _$POSMapDTOCopyWith<$Res> {
  __$POSMapDTOCopyWithImpl(_POSMapDTO _value, $Res Function(_POSMapDTO) _then)
      : super(_value, (v) => _then(v as _POSMapDTO));

  @override
  _POSMapDTO get _value => super._value as _POSMapDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? url = freezed,
  }) {
    return _then(_POSMapDTO(
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
              as PositionDTO,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSMapDTO implements _POSMapDTO {
  const _$_POSMapDTO(
      {required this.id, required this.name, required this.position, this.url});

  factory _$_POSMapDTO.fromJson(Map<String, dynamic> json) =>
      _$$_POSMapDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final PositionDTO position;
  @override
  final String? url;

  @override
  String toString() {
    return 'POSMapDTO(id: $id, name: $name, position: $position, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _POSMapDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$POSMapDTOCopyWith<_POSMapDTO> get copyWith =>
      __$POSMapDTOCopyWithImpl<_POSMapDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMapDTOToJson(this);
  }
}

abstract class _POSMapDTO implements POSMapDTO {
  const factory _POSMapDTO(
      {required String id,
      required String name,
      required PositionDTO position,
      String? url}) = _$_POSMapDTO;

  factory _POSMapDTO.fromJson(Map<String, dynamic> json) =
      _$_POSMapDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  PositionDTO get position => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$POSMapDTOCopyWith<_POSMapDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionDTO _$PositionDTOFromJson(Map<String, dynamic> json) {
  return _PositionDTO.fromJson(json);
}

/// @nodoc
class _$PositionDTOTearOff {
  const _$PositionDTOTearOff();

  _PositionDTO call({required double latitude, required double longitude}) {
    return _PositionDTO(
      latitude: latitude,
      longitude: longitude,
    );
  }

  PositionDTO fromJson(Map<String, Object> json) {
    return PositionDTO.fromJson(json);
  }
}

/// @nodoc
const $PositionDTO = _$PositionDTOTearOff();

/// @nodoc
mixin _$PositionDTO {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionDTOCopyWith<PositionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDTOCopyWith<$Res> {
  factory $PositionDTOCopyWith(
          PositionDTO value, $Res Function(PositionDTO) then) =
      _$PositionDTOCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$PositionDTOCopyWithImpl<$Res> implements $PositionDTOCopyWith<$Res> {
  _$PositionDTOCopyWithImpl(this._value, this._then);

  final PositionDTO _value;
  // ignore: unused_field
  final $Res Function(PositionDTO) _then;

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
abstract class _$PositionDTOCopyWith<$Res>
    implements $PositionDTOCopyWith<$Res> {
  factory _$PositionDTOCopyWith(
          _PositionDTO value, $Res Function(_PositionDTO) then) =
      __$PositionDTOCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$PositionDTOCopyWithImpl<$Res> extends _$PositionDTOCopyWithImpl<$Res>
    implements _$PositionDTOCopyWith<$Res> {
  __$PositionDTOCopyWithImpl(
      _PositionDTO _value, $Res Function(_PositionDTO) _then)
      : super(_value, (v) => _then(v as _PositionDTO));

  @override
  _PositionDTO get _value => super._value as _PositionDTO;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_PositionDTO(
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
@JsonSerializable()
class _$_PositionDTO implements _PositionDTO {
  const _$_PositionDTO({required this.latitude, required this.longitude});

  factory _$_PositionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PositionDTOFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'PositionDTO(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionDTO &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$PositionDTOCopyWith<_PositionDTO> get copyWith =>
      __$PositionDTOCopyWithImpl<_PositionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionDTOToJson(this);
  }
}

abstract class _PositionDTO implements PositionDTO {
  const factory _PositionDTO(
      {required double latitude, required double longitude}) = _$_PositionDTO;

  factory _PositionDTO.fromJson(Map<String, dynamic> json) =
      _$_PositionDTO.fromJson;

  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PositionDTOCopyWith<_PositionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
