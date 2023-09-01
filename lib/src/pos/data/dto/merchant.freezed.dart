// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MerchantDTO _$MerchantDTOFromJson(Map<String, dynamic> json) {
  return _MerchantDTO.fromJson(json);
}

/// @nodoc
mixin _$MerchantDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  AddressDetailsDTO get addressDetails =>
      throw _privateConstructorUsedError; // required String address,
// required String zipCode,
// required String city,
// required String country,
  String get access => throw _privateConstructorUsedError;
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
      _$MerchantDTOCopyWithImpl<$Res, MerchantDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      AddressDetailsDTO addressDetails,
      String access,
      String fiscalCode,
      List<PointOfSaleDTO> pos,
      String? description,
      String? url});

  $AddressDetailsDTOCopyWith<$Res> get addressDetails;
}

/// @nodoc
class _$MerchantDTOCopyWithImpl<$Res, $Val extends MerchantDTO>
    implements $MerchantDTOCopyWith<$Res> {
  _$MerchantDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? addressDetails = null,
    Object? access = null,
    Object? fiscalCode = null,
    Object? pos = null,
    Object? description = freezed,
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
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as AddressDetailsDTO,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      fiscalCode: null == fiscalCode
          ? _value.fiscalCode
          : fiscalCode // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<PointOfSaleDTO>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDetailsDTOCopyWith<$Res> get addressDetails {
    return $AddressDetailsDTOCopyWith<$Res>(_value.addressDetails, (value) {
      return _then(_value.copyWith(addressDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MerchantDTOCopyWith<$Res>
    implements $MerchantDTOCopyWith<$Res> {
  factory _$$_MerchantDTOCopyWith(
          _$_MerchantDTO value, $Res Function(_$_MerchantDTO) then) =
      __$$_MerchantDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      AddressDetailsDTO addressDetails,
      String access,
      String fiscalCode,
      List<PointOfSaleDTO> pos,
      String? description,
      String? url});

  @override
  $AddressDetailsDTOCopyWith<$Res> get addressDetails;
}

/// @nodoc
class __$$_MerchantDTOCopyWithImpl<$Res>
    extends _$MerchantDTOCopyWithImpl<$Res, _$_MerchantDTO>
    implements _$$_MerchantDTOCopyWith<$Res> {
  __$$_MerchantDTOCopyWithImpl(
      _$_MerchantDTO _value, $Res Function(_$_MerchantDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? addressDetails = null,
    Object? access = null,
    Object? fiscalCode = null,
    Object? pos = null,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_MerchantDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as AddressDetailsDTO,
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      fiscalCode: null == fiscalCode
          ? _value.fiscalCode
          : fiscalCode // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value._pos
          : pos // ignore: cast_nullable_to_non_nullable
              as List<PointOfSaleDTO>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
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
      required this.addressDetails,
      required this.access,
      required this.fiscalCode,
      required final List<PointOfSaleDTO> pos,
      this.description,
      this.url})
      : _pos = pos;

  factory _$_MerchantDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MerchantDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final AddressDetailsDTO addressDetails;
// required String address,
// required String zipCode,
// required String city,
// required String country,
  @override
  final String access;
  @override
  final String fiscalCode;
  final List<PointOfSaleDTO> _pos;
  @override
  List<PointOfSaleDTO> get pos {
    if (_pos is EqualUnmodifiableListView) return _pos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pos);
  }

  @override
  final String? description;
  @override
  final String? url;

  @override
  String toString() {
    return 'MerchantDTO(id: $id, name: $name, addressDetails: $addressDetails, access: $access, fiscalCode: $fiscalCode, pos: $pos, description: $description, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MerchantDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressDetails, addressDetails) ||
                other.addressDetails == addressDetails) &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.fiscalCode, fiscalCode) ||
                other.fiscalCode == fiscalCode) &&
            const DeepCollectionEquality().equals(other._pos, _pos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, addressDetails, access,
      fiscalCode, const DeepCollectionEquality().hash(_pos), description, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MerchantDTOCopyWith<_$_MerchantDTO> get copyWith =>
      __$$_MerchantDTOCopyWithImpl<_$_MerchantDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MerchantDTOToJson(
      this,
    );
  }
}

abstract class _MerchantDTO implements MerchantDTO {
  const factory _MerchantDTO(
      {required final String id,
      required final String name,
      required final AddressDetailsDTO addressDetails,
      required final String access,
      required final String fiscalCode,
      required final List<PointOfSaleDTO> pos,
      final String? description,
      final String? url}) = _$_MerchantDTO;

  factory _MerchantDTO.fromJson(Map<String, dynamic> json) =
      _$_MerchantDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  AddressDetailsDTO get addressDetails;
  @override // required String address,
// required String zipCode,
// required String city,
// required String country,
  String get access;
  @override
  String get fiscalCode;
  @override
  List<PointOfSaleDTO> get pos;
  @override
  String? get description;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_MerchantDTOCopyWith<_$_MerchantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDetailsDTO _$AddressDetailsDTOFromJson(Map<String, dynamic> json) {
  return _AddressDetailsDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDetailsDTO {
  String get streetName => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get streetNumber => throw _privateConstructorUsedError;
  String? get formattedAddress => throw _privateConstructorUsedError;
  String? get googleMapsPlaceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDetailsDTOCopyWith<AddressDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDetailsDTOCopyWith<$Res> {
  factory $AddressDetailsDTOCopyWith(
          AddressDetailsDTO value, $Res Function(AddressDetailsDTO) then) =
      _$AddressDetailsDTOCopyWithImpl<$Res, AddressDetailsDTO>;
  @useResult
  $Res call(
      {String streetName,
      String zipCode,
      String city,
      String country,
      String? streetNumber,
      String? formattedAddress,
      String? googleMapsPlaceId});
}

/// @nodoc
class _$AddressDetailsDTOCopyWithImpl<$Res, $Val extends AddressDetailsDTO>
    implements $AddressDetailsDTOCopyWith<$Res> {
  _$AddressDetailsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetName = null,
    Object? zipCode = null,
    Object? city = null,
    Object? country = null,
    Object? streetNumber = freezed,
    Object? formattedAddress = freezed,
    Object? googleMapsPlaceId = freezed,
  }) {
    return _then(_value.copyWith(
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      googleMapsPlaceId: freezed == googleMapsPlaceId
          ? _value.googleMapsPlaceId
          : googleMapsPlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDetailsDTOCopyWith<$Res>
    implements $AddressDetailsDTOCopyWith<$Res> {
  factory _$$_AddressDetailsDTOCopyWith(_$_AddressDetailsDTO value,
          $Res Function(_$_AddressDetailsDTO) then) =
      __$$_AddressDetailsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String streetName,
      String zipCode,
      String city,
      String country,
      String? streetNumber,
      String? formattedAddress,
      String? googleMapsPlaceId});
}

/// @nodoc
class __$$_AddressDetailsDTOCopyWithImpl<$Res>
    extends _$AddressDetailsDTOCopyWithImpl<$Res, _$_AddressDetailsDTO>
    implements _$$_AddressDetailsDTOCopyWith<$Res> {
  __$$_AddressDetailsDTOCopyWithImpl(
      _$_AddressDetailsDTO _value, $Res Function(_$_AddressDetailsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetName = null,
    Object? zipCode = null,
    Object? city = null,
    Object? country = null,
    Object? streetNumber = freezed,
    Object? formattedAddress = freezed,
    Object? googleMapsPlaceId = freezed,
  }) {
    return _then(_$_AddressDetailsDTO(
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      googleMapsPlaceId: freezed == googleMapsPlaceId
          ? _value.googleMapsPlaceId
          : googleMapsPlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDetailsDTO implements _AddressDetailsDTO {
  const _$_AddressDetailsDTO(
      {required this.streetName,
      required this.zipCode,
      required this.city,
      required this.country,
      this.streetNumber,
      this.formattedAddress,
      this.googleMapsPlaceId});

  factory _$_AddressDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDetailsDTOFromJson(json);

  @override
  final String streetName;
  @override
  final String zipCode;
  @override
  final String city;
  @override
  final String country;
  @override
  final String? streetNumber;
  @override
  final String? formattedAddress;
  @override
  final String? googleMapsPlaceId;

  @override
  String toString() {
    return 'AddressDetailsDTO(streetName: $streetName, zipCode: $zipCode, city: $city, country: $country, streetNumber: $streetNumber, formattedAddress: $formattedAddress, googleMapsPlaceId: $googleMapsPlaceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDetailsDTO &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.googleMapsPlaceId, googleMapsPlaceId) ||
                other.googleMapsPlaceId == googleMapsPlaceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streetName, zipCode, city,
      country, streetNumber, formattedAddress, googleMapsPlaceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDetailsDTOCopyWith<_$_AddressDetailsDTO> get copyWith =>
      __$$_AddressDetailsDTOCopyWithImpl<_$_AddressDetailsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDetailsDTOToJson(
      this,
    );
  }
}

abstract class _AddressDetailsDTO implements AddressDetailsDTO {
  const factory _AddressDetailsDTO(
      {required final String streetName,
      required final String zipCode,
      required final String city,
      required final String country,
      final String? streetNumber,
      final String? formattedAddress,
      final String? googleMapsPlaceId}) = _$_AddressDetailsDTO;

  factory _AddressDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressDetailsDTO.fromJson;

  @override
  String get streetName;
  @override
  String get zipCode;
  @override
  String get city;
  @override
  String get country;
  @override
  String? get streetNumber;
  @override
  String? get formattedAddress;
  @override
  String? get googleMapsPlaceId;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDetailsDTOCopyWith<_$_AddressDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
