// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instrument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instrument _$InstrumentFromJson(Map<String, dynamic> json) {
  return _Instrument.fromJson(json);
}

/// @nodoc
class _$InstrumentTearOff {
  const _$InstrumentTearOff();

  _Instrument call(
      {required String id,
      required String name,
      required String privateKey,
      required String publicKey,
      required Set<String> enabledAims,
      required Map<String, int> perAimBudget,
      required bool locationIsFixed,
      String? url,
      Location? defaultLocation}) {
    return _Instrument(
      id: id,
      name: name,
      privateKey: privateKey,
      publicKey: publicKey,
      enabledAims: enabledAims,
      perAimBudget: perAimBudget,
      locationIsFixed: locationIsFixed,
      url: url,
      defaultLocation: defaultLocation,
    );
  }

  Instrument fromJson(Map<String, Object> json) {
    return Instrument.fromJson(json);
  }
}

/// @nodoc
const $Instrument = _$InstrumentTearOff();

/// @nodoc
mixin _$Instrument {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get privateKey => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  Set<String> get enabledAims => throw _privateConstructorUsedError;
  Map<String, int> get perAimBudget => throw _privateConstructorUsedError;
  bool get locationIsFixed => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Location? get defaultLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentCopyWith<Instrument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentCopyWith<$Res> {
  factory $InstrumentCopyWith(
          Instrument value, $Res Function(Instrument) then) =
      _$InstrumentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String privateKey,
      String publicKey,
      Set<String> enabledAims,
      Map<String, int> perAimBudget,
      bool locationIsFixed,
      String? url,
      Location? defaultLocation});

  $LocationCopyWith<$Res>? get defaultLocation;
}

/// @nodoc
class _$InstrumentCopyWithImpl<$Res> implements $InstrumentCopyWith<$Res> {
  _$InstrumentCopyWithImpl(this._value, this._then);

  final Instrument _value;
  // ignore: unused_field
  final $Res Function(Instrument) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? privateKey = freezed,
    Object? publicKey = freezed,
    Object? enabledAims = freezed,
    Object? perAimBudget = freezed,
    Object? locationIsFixed = freezed,
    Object? url = freezed,
    Object? defaultLocation = freezed,
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
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAims: enabledAims == freezed
          ? _value.enabledAims
          : enabledAims // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      perAimBudget: perAimBudget == freezed
          ? _value.perAimBudget
          : perAimBudget // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      locationIsFixed: locationIsFixed == freezed
          ? _value.locationIsFixed
          : locationIsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocation: defaultLocation == freezed
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get defaultLocation {
    if (_value.defaultLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.defaultLocation!, (value) {
      return _then(_value.copyWith(defaultLocation: value));
    });
  }
}

/// @nodoc
abstract class _$InstrumentCopyWith<$Res> implements $InstrumentCopyWith<$Res> {
  factory _$InstrumentCopyWith(
          _Instrument value, $Res Function(_Instrument) then) =
      __$InstrumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String privateKey,
      String publicKey,
      Set<String> enabledAims,
      Map<String, int> perAimBudget,
      bool locationIsFixed,
      String? url,
      Location? defaultLocation});

  @override
  $LocationCopyWith<$Res>? get defaultLocation;
}

/// @nodoc
class __$InstrumentCopyWithImpl<$Res> extends _$InstrumentCopyWithImpl<$Res>
    implements _$InstrumentCopyWith<$Res> {
  __$InstrumentCopyWithImpl(
      _Instrument _value, $Res Function(_Instrument) _then)
      : super(_value, (v) => _then(v as _Instrument));

  @override
  _Instrument get _value => super._value as _Instrument;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? privateKey = freezed,
    Object? publicKey = freezed,
    Object? enabledAims = freezed,
    Object? perAimBudget = freezed,
    Object? locationIsFixed = freezed,
    Object? url = freezed,
    Object? defaultLocation = freezed,
  }) {
    return _then(_Instrument(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAims: enabledAims == freezed
          ? _value.enabledAims
          : enabledAims // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      perAimBudget: perAimBudget == freezed
          ? _value.perAimBudget
          : perAimBudget // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      locationIsFixed: locationIsFixed == freezed
          ? _value.locationIsFixed
          : locationIsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocation: defaultLocation == freezed
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Instrument implements _Instrument {
  const _$_Instrument(
      {required this.id,
      required this.name,
      required this.privateKey,
      required this.publicKey,
      required this.enabledAims,
      required this.perAimBudget,
      required this.locationIsFixed,
      this.url,
      this.defaultLocation});

  factory _$_Instrument.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String privateKey;
  @override
  final String publicKey;
  @override
  final Set<String> enabledAims;
  @override
  final Map<String, int> perAimBudget;
  @override
  final bool locationIsFixed;
  @override
  final String? url;
  @override
  final Location? defaultLocation;

  @override
  String toString() {
    return 'Instrument(id: $id, name: $name, privateKey: $privateKey, publicKey: $publicKey, enabledAims: $enabledAims, perAimBudget: $perAimBudget, locationIsFixed: $locationIsFixed, url: $url, defaultLocation: $defaultLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Instrument &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.privateKey, privateKey) ||
                const DeepCollectionEquality()
                    .equals(other.privateKey, privateKey)) &&
            (identical(other.publicKey, publicKey) ||
                const DeepCollectionEquality()
                    .equals(other.publicKey, publicKey)) &&
            (identical(other.enabledAims, enabledAims) ||
                const DeepCollectionEquality()
                    .equals(other.enabledAims, enabledAims)) &&
            (identical(other.perAimBudget, perAimBudget) ||
                const DeepCollectionEquality()
                    .equals(other.perAimBudget, perAimBudget)) &&
            (identical(other.locationIsFixed, locationIsFixed) ||
                const DeepCollectionEquality()
                    .equals(other.locationIsFixed, locationIsFixed)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.defaultLocation, defaultLocation) ||
                const DeepCollectionEquality()
                    .equals(other.defaultLocation, defaultLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(privateKey) ^
      const DeepCollectionEquality().hash(publicKey) ^
      const DeepCollectionEquality().hash(enabledAims) ^
      const DeepCollectionEquality().hash(perAimBudget) ^
      const DeepCollectionEquality().hash(locationIsFixed) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(defaultLocation);

  @JsonKey(ignore: true)
  @override
  _$InstrumentCopyWith<_Instrument> get copyWith =>
      __$InstrumentCopyWithImpl<_Instrument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentToJson(this);
  }
}

abstract class _Instrument implements Instrument {
  const factory _Instrument(
      {required String id,
      required String name,
      required String privateKey,
      required String publicKey,
      required Set<String> enabledAims,
      required Map<String, int> perAimBudget,
      required bool locationIsFixed,
      String? url,
      Location? defaultLocation}) = _$_Instrument;

  factory _Instrument.fromJson(Map<String, dynamic> json) =
      _$_Instrument.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get privateKey => throw _privateConstructorUsedError;
  @override
  String get publicKey => throw _privateConstructorUsedError;
  @override
  Set<String> get enabledAims => throw _privateConstructorUsedError;
  @override
  Map<String, int> get perAimBudget => throw _privateConstructorUsedError;
  @override
  bool get locationIsFixed => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  Location? get defaultLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InstrumentCopyWith<_Instrument> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call({required double latitude, required double longitude}) {
    return _Location(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Location fromJson(Map<String, Object> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

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
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Location(
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
class _$_Location implements _Location {
  const _$_Location({required this.latitude, required this.longitude});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
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
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required double latitude, required double longitude}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
