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

POSMapResponseDTO _$POSMapResponseDTOFromJson(Map<String, dynamic> json) {
  return _POSMapResponseDTO.fromJson(json);
}

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
      _$POSMapResponseDTOCopyWithImpl<$Res, POSMapResponseDTO>;
  @useResult
  $Res call({List<POSMapDTO> pos});
}

/// @nodoc
class _$POSMapResponseDTOCopyWithImpl<$Res, $Val extends POSMapResponseDTO>
    implements $POSMapResponseDTOCopyWith<$Res> {
  _$POSMapResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_value.copyWith(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<POSMapDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_POSMapResponseDTOCopyWith<$Res>
    implements $POSMapResponseDTOCopyWith<$Res> {
  factory _$$_POSMapResponseDTOCopyWith(_$_POSMapResponseDTO value,
          $Res Function(_$_POSMapResponseDTO) then) =
      __$$_POSMapResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<POSMapDTO> pos});
}

/// @nodoc
class __$$_POSMapResponseDTOCopyWithImpl<$Res>
    extends _$POSMapResponseDTOCopyWithImpl<$Res, _$_POSMapResponseDTO>
    implements _$$_POSMapResponseDTOCopyWith<$Res> {
  __$$_POSMapResponseDTOCopyWithImpl(
      _$_POSMapResponseDTO _value, $Res Function(_$_POSMapResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$_POSMapResponseDTO(
      pos: null == pos
          ? _value._pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<POSMapDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_POSMapResponseDTO implements _POSMapResponseDTO {
  const _$_POSMapResponseDTO({required final List<POSMapDTO> pos}) : _pos = pos;

  factory _$_POSMapResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_POSMapResponseDTOFromJson(json);

  final List<POSMapDTO> _pos;
  @override
  List<POSMapDTO> get pos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pos);
  }

  @override
  String toString() {
    return 'POSMapResponseDTO(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_POSMapResponseDTO &&
            const DeepCollectionEquality().equals(other._pos, _pos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_POSMapResponseDTOCopyWith<_$_POSMapResponseDTO> get copyWith =>
      __$$_POSMapResponseDTOCopyWithImpl<_$_POSMapResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMapResponseDTOToJson(
      this,
    );
  }
}

abstract class _POSMapResponseDTO implements POSMapResponseDTO {
  const factory _POSMapResponseDTO({required final List<POSMapDTO> pos}) =
      _$_POSMapResponseDTO;

  factory _POSMapResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_POSMapResponseDTO.fromJson;

  @override
  List<POSMapDTO> get pos;
  @override
  @JsonKey(ignore: true)
  _$$_POSMapResponseDTOCopyWith<_$_POSMapResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

POSMapDTO _$POSMapDTOFromJson(Map<String, dynamic> json) {
  return _POSMapDTO.fromJson(json);
}

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
      _$POSMapDTOCopyWithImpl<$Res, POSMapDTO>;
  @useResult
  $Res call({String id, String name, PositionDTO position, String? url});

  $PositionDTOCopyWith<$Res> get position;
}

/// @nodoc
class _$POSMapDTOCopyWithImpl<$Res, $Val extends POSMapDTO>
    implements $POSMapDTOCopyWith<$Res> {
  _$POSMapDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDTO,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionDTOCopyWith<$Res> get position {
    return $PositionDTOCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_POSMapDTOCopyWith<$Res> implements $POSMapDTOCopyWith<$Res> {
  factory _$$_POSMapDTOCopyWith(
          _$_POSMapDTO value, $Res Function(_$_POSMapDTO) then) =
      __$$_POSMapDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, PositionDTO position, String? url});

  @override
  $PositionDTOCopyWith<$Res> get position;
}

/// @nodoc
class __$$_POSMapDTOCopyWithImpl<$Res>
    extends _$POSMapDTOCopyWithImpl<$Res, _$_POSMapDTO>
    implements _$$_POSMapDTOCopyWith<$Res> {
  __$$_POSMapDTOCopyWithImpl(
      _$_POSMapDTO _value, $Res Function(_$_POSMapDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? url = freezed,
  }) {
    return _then(_$_POSMapDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDTO,
      url: freezed == url
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
        (other.runtimeType == runtimeType &&
            other is _$_POSMapDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, position, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_POSMapDTOCopyWith<_$_POSMapDTO> get copyWith =>
      __$$_POSMapDTOCopyWithImpl<_$_POSMapDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_POSMapDTOToJson(
      this,
    );
  }
}

abstract class _POSMapDTO implements POSMapDTO {
  const factory _POSMapDTO(
      {required final String id,
      required final String name,
      required final PositionDTO position,
      final String? url}) = _$_POSMapDTO;

  factory _POSMapDTO.fromJson(Map<String, dynamic> json) =
      _$_POSMapDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  PositionDTO get position;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_POSMapDTOCopyWith<_$_POSMapDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionDTO _$PositionDTOFromJson(Map<String, dynamic> json) {
  return _PositionDTO.fromJson(json);
}

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
      _$PositionDTOCopyWithImpl<$Res, PositionDTO>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$PositionDTOCopyWithImpl<$Res, $Val extends PositionDTO>
    implements $PositionDTOCopyWith<$Res> {
  _$PositionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionDTOCopyWith<$Res>
    implements $PositionDTOCopyWith<$Res> {
  factory _$$_PositionDTOCopyWith(
          _$_PositionDTO value, $Res Function(_$_PositionDTO) then) =
      __$$_PositionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_PositionDTOCopyWithImpl<$Res>
    extends _$PositionDTOCopyWithImpl<$Res, _$_PositionDTO>
    implements _$$_PositionDTOCopyWith<$Res> {
  __$$_PositionDTOCopyWithImpl(
      _$_PositionDTO _value, $Res Function(_$_PositionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_PositionDTO(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
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
        (other.runtimeType == runtimeType &&
            other is _$_PositionDTO &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionDTOCopyWith<_$_PositionDTO> get copyWith =>
      __$$_PositionDTOCopyWithImpl<_$_PositionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionDTOToJson(
      this,
    );
  }
}

abstract class _PositionDTO implements PositionDTO {
  const factory _PositionDTO(
      {required final double latitude,
      required final double longitude}) = _$_PositionDTO;

  factory _PositionDTO.fromJson(Map<String, dynamic> json) =
      _$_PositionDTO.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PositionDTOCopyWith<_$_PositionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
