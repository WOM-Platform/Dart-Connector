// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point_of_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointOfSaleDTO _$PointOfSaleDTOFromJson(Map<String, dynamic> json) {
  return _PointOfSaleDTO.fromJson(json);
}

/// @nodoc
mixin _$PointOfSaleDTO {
  String get privateKey => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointOfSaleDTOCopyWith<PointOfSaleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointOfSaleDTOCopyWith<$Res> {
  factory $PointOfSaleDTOCopyWith(
          PointOfSaleDTO value, $Res Function(PointOfSaleDTO) then) =
      _$PointOfSaleDTOCopyWithImpl<$Res>;
  $Res call(
      {String privateKey,
      String id,
      String name,
      bool isActive,
      double? latitude,
      double? longitude,
      String? url});
}

/// @nodoc
class _$PointOfSaleDTOCopyWithImpl<$Res>
    implements $PointOfSaleDTOCopyWith<$Res> {
  _$PointOfSaleDTOCopyWithImpl(this._value, this._then);

  final PointOfSaleDTO _value;
  // ignore: unused_field
  final $Res Function(PointOfSaleDTO) _then;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PointOfSaleDTOCopyWith<$Res>
    implements $PointOfSaleDTOCopyWith<$Res> {
  factory _$$_PointOfSaleDTOCopyWith(
          _$_PointOfSaleDTO value, $Res Function(_$_PointOfSaleDTO) then) =
      __$$_PointOfSaleDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String privateKey,
      String id,
      String name,
      bool isActive,
      double? latitude,
      double? longitude,
      String? url});
}

/// @nodoc
class __$$_PointOfSaleDTOCopyWithImpl<$Res>
    extends _$PointOfSaleDTOCopyWithImpl<$Res>
    implements _$$_PointOfSaleDTOCopyWith<$Res> {
  __$$_PointOfSaleDTOCopyWithImpl(
      _$_PointOfSaleDTO _value, $Res Function(_$_PointOfSaleDTO) _then)
      : super(_value, (v) => _then(v as _$_PointOfSaleDTO));

  @override
  _$_PointOfSaleDTO get _value => super._value as _$_PointOfSaleDTO;

  @override
  $Res call({
    Object? privateKey = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PointOfSaleDTO(
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointOfSaleDTO implements _PointOfSaleDTO {
  const _$_PointOfSaleDTO(
      {required this.privateKey,
      required this.id,
      required this.name,
      required this.isActive,
      this.latitude,
      this.longitude,
      this.url});

  factory _$_PointOfSaleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PointOfSaleDTOFromJson(json);

  @override
  final String privateKey;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool isActive;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? url;

  @override
  String toString() {
    return 'PointOfSaleDTO(privateKey: $privateKey, id: $id, name: $name, isActive: $isActive, latitude: $latitude, longitude: $longitude, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointOfSaleDTO &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(privateKey),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PointOfSaleDTOCopyWith<_$_PointOfSaleDTO> get copyWith =>
      __$$_PointOfSaleDTOCopyWithImpl<_$_PointOfSaleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointOfSaleDTOToJson(
      this,
    );
  }
}

abstract class _PointOfSaleDTO implements PointOfSaleDTO {
  const factory _PointOfSaleDTO(
      {required final String privateKey,
      required final String id,
      required final String name,
      required final bool isActive,
      final double? latitude,
      final double? longitude,
      final String? url}) = _$_PointOfSaleDTO;

  factory _PointOfSaleDTO.fromJson(Map<String, dynamic> json) =
      _$_PointOfSaleDTO.fromJson;

  @override
  String get privateKey;
  @override
  String get id;
  @override
  String get name;
  @override
  bool get isActive;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PointOfSaleDTOCopyWith<_$_PointOfSaleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
