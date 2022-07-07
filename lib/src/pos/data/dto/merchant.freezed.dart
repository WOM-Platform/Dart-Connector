// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merchant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantDTO _$MerchantDTOFromJson(Map<String, dynamic> json) {
  return _MerchantDTO.fromJson(json);
}

/// @nodoc
class _$MerchantDTOTearOff {
  const _$MerchantDTOTearOff();

  _MerchantDTO call(
      {required String id,
      required String name,
      required String address,
      required String zipCode,
      required String city,
      required String country,
      required String fiscalCode,
      required List<PointOfSaleDTO> pos,
      String? description,
      String? url}) {
    return _MerchantDTO(
      id: id,
      name: name,
      address: address,
      zipCode: zipCode,
      city: city,
      country: country,
      fiscalCode: fiscalCode,
      pos: pos,
      description: description,
      url: url,
    );
  }

  MerchantDTO fromJson(Map<String, Object> json) {
    return MerchantDTO.fromJson(json);
  }
}

/// @nodoc
const $MerchantDTO = _$MerchantDTOTearOff();

/// @nodoc
mixin _$MerchantDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get fiscalCode => throw _privateConstructorUsedError;
  List<PointOfSaleDTO> get pos => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantDTOCopyWith<MerchantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantDTOCopyWith<$Res> {
  factory $MerchantDTOCopyWith(
          MerchantDTO value, $Res Function(MerchantDTO) then) =
      _$MerchantDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String address,
      String zipCode,
      String city,
      String country,
      String fiscalCode,
      List<PointOfSaleDTO> pos,
      String? description,
      String? url});
}

/// @nodoc
class _$MerchantDTOCopyWithImpl<$Res> implements $MerchantDTOCopyWith<$Res> {
  _$MerchantDTOCopyWithImpl(this._value, this._then);

  final MerchantDTO _value;
  // ignore: unused_field
  final $Res Function(MerchantDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? fiscalCode = freezed,
    Object? pos = freezed,
    Object? description = freezed,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      fiscalCode: fiscalCode == freezed
          ? _value.fiscalCode
          : fiscalCode // ignore: cast_nullable_to_non_nullable
              as String,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<PointOfSaleDTO>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MerchantDTOCopyWith<$Res>
    implements $MerchantDTOCopyWith<$Res> {
  factory _$MerchantDTOCopyWith(
          _MerchantDTO value, $Res Function(_MerchantDTO) then) =
      __$MerchantDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String address,
      String zipCode,
      String city,
      String country,
      String fiscalCode,
      List<PointOfSaleDTO> pos,
      String? description,
      String? url});
}

/// @nodoc
class __$MerchantDTOCopyWithImpl<$Res> extends _$MerchantDTOCopyWithImpl<$Res>
    implements _$MerchantDTOCopyWith<$Res> {
  __$MerchantDTOCopyWithImpl(
      _MerchantDTO _value, $Res Function(_MerchantDTO) _then)
      : super(_value, (v) => _then(v as _MerchantDTO));

  @override
  _MerchantDTO get _value => super._value as _MerchantDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? fiscalCode = freezed,
    Object? pos = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_MerchantDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      fiscalCode: fiscalCode == freezed
          ? _value.fiscalCode
          : fiscalCode // ignore: cast_nullable_to_non_nullable
              as String,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<PointOfSaleDTO>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MerchantDTO implements _MerchantDTO {
  const _$_MerchantDTO(
      {required this.id,
      required this.name,
      required this.address,
      required this.zipCode,
      required this.city,
      required this.country,
      required this.fiscalCode,
      required this.pos,
      this.description,
      this.url});

  factory _$_MerchantDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String zipCode;
  @override
  final String city;
  @override
  final String country;
  @override
  final String fiscalCode;
  @override
  final List<PointOfSaleDTO> pos;
  @override
  final String? description;
  @override
  final String? url;

  @override
  String toString() {
    return 'MerchantDTO(id: $id, name: $name, address: $address, zipCode: $zipCode, city: $city, country: $country, fiscalCode: $fiscalCode, pos: $pos, description: $description, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MerchantDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.fiscalCode, fiscalCode) ||
                const DeepCollectionEquality()
                    .equals(other.fiscalCode, fiscalCode)) &&
            (identical(other.pos, pos) ||
                const DeepCollectionEquality().equals(other.pos, pos)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(fiscalCode) ^
      const DeepCollectionEquality().hash(pos) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$MerchantDTOCopyWith<_MerchantDTO> get copyWith =>
      __$MerchantDTOCopyWithImpl<_MerchantDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantDTOToJson(this);
  }
}

abstract class _MerchantDTO implements MerchantDTO {
  const factory _MerchantDTO(
      {required String id,
      required String name,
      required String address,
      required String zipCode,
      required String city,
      required String country,
      required String fiscalCode,
      required List<PointOfSaleDTO> pos,
      String? description,
      String? url}) = _$_MerchantDTO;

  factory _MerchantDTO.fromJson(Map<String, dynamic> json) =
      _$_MerchantDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get zipCode => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get fiscalCode => throw _privateConstructorUsedError;
  @override
  List<PointOfSaleDTO> get pos => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MerchantDTOCopyWith<_MerchantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
