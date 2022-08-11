// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instrument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instrument _$InstrumentFromJson(Map<String, dynamic> json) {
  return _Instrument.fromJson(json);
}

/// @nodoc
mixin _$Instrument {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get apiKey => throw _privateConstructorUsedError;
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
      String? apiKey,
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
    Object? apiKey = freezed,
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
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_InstrumentCopyWith<$Res>
    implements $InstrumentCopyWith<$Res> {
  factory _$$_InstrumentCopyWith(
          _$_Instrument value, $Res Function(_$_Instrument) then) =
      __$$_InstrumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? apiKey,
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
class __$$_InstrumentCopyWithImpl<$Res> extends _$InstrumentCopyWithImpl<$Res>
    implements _$$_InstrumentCopyWith<$Res> {
  __$$_InstrumentCopyWithImpl(
      _$_Instrument _value, $Res Function(_$_Instrument) _then)
      : super(_value, (v) => _then(v as _$_Instrument));

  @override
  _$_Instrument get _value => super._value as _$_Instrument;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? apiKey = freezed,
    Object? privateKey = freezed,
    Object? publicKey = freezed,
    Object? enabledAims = freezed,
    Object? perAimBudget = freezed,
    Object? locationIsFixed = freezed,
    Object? url = freezed,
    Object? defaultLocation = freezed,
  }) {
    return _then(_$_Instrument(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: apiKey == freezed
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAims: enabledAims == freezed
          ? _value._enabledAims
          : enabledAims // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      perAimBudget: perAimBudget == freezed
          ? _value._perAimBudget
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
      this.apiKey,
      required this.privateKey,
      required this.publicKey,
      required final Set<String> enabledAims,
      required final Map<String, int> perAimBudget,
      required this.locationIsFixed,
      this.url,
      this.defaultLocation})
      : _enabledAims = enabledAims,
        _perAimBudget = perAimBudget;

  factory _$_Instrument.fromJson(Map<String, dynamic> json) =>
      _$$_InstrumentFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? apiKey;
  @override
  final String privateKey;
  @override
  final String publicKey;
  final Set<String> _enabledAims;
  @override
  Set<String> get enabledAims {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_enabledAims);
  }

  final Map<String, int> _perAimBudget;
  @override
  Map<String, int> get perAimBudget {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_perAimBudget);
  }

  @override
  final bool locationIsFixed;
  @override
  final String? url;
  @override
  final Location? defaultLocation;

  @override
  String toString() {
    return 'Instrument(id: $id, name: $name, apiKey: $apiKey, privateKey: $privateKey, publicKey: $publicKey, enabledAims: $enabledAims, perAimBudget: $perAimBudget, locationIsFixed: $locationIsFixed, url: $url, defaultLocation: $defaultLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Instrument &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.apiKey, apiKey) &&
            const DeepCollectionEquality()
                .equals(other.privateKey, privateKey) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality()
                .equals(other._enabledAims, _enabledAims) &&
            const DeepCollectionEquality()
                .equals(other._perAimBudget, _perAimBudget) &&
            const DeepCollectionEquality()
                .equals(other.locationIsFixed, locationIsFixed) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.defaultLocation, defaultLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(apiKey),
      const DeepCollectionEquality().hash(privateKey),
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(_enabledAims),
      const DeepCollectionEquality().hash(_perAimBudget),
      const DeepCollectionEquality().hash(locationIsFixed),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(defaultLocation));

  @JsonKey(ignore: true)
  @override
  _$$_InstrumentCopyWith<_$_Instrument> get copyWith =>
      __$$_InstrumentCopyWithImpl<_$_Instrument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstrumentToJson(
      this,
    );
  }
}

abstract class _Instrument implements Instrument {
  const factory _Instrument(
      {required final String id,
      required final String name,
      final String? apiKey,
      required final String privateKey,
      required final String publicKey,
      required final Set<String> enabledAims,
      required final Map<String, int> perAimBudget,
      required final bool locationIsFixed,
      final String? url,
      final Location? defaultLocation}) = _$_Instrument;

  factory _Instrument.fromJson(Map<String, dynamic> json) =
      _$_Instrument.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get apiKey;
  @override
  String get privateKey;
  @override
  String get publicKey;
  @override
  Set<String> get enabledAims;
  @override
  Map<String, int> get perAimBudget;
  @override
  bool get locationIsFixed;
  @override
  String? get url;
  @override
  Location? get defaultLocation;
  @override
  @JsonKey(ignore: true)
  _$$_InstrumentCopyWith<_$_Instrument> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

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
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_Location(
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
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final double latitude,
      required final double longitude}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
