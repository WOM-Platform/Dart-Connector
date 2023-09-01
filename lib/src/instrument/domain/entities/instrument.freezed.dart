// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  Map<String, int>? get perAimBudget => throw _privateConstructorUsedError;
  bool get locationIsFixed => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Location? get defaultLocation => throw _privateConstructorUsedError;
  CustomGenerator? get customGenerator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstrumentCopyWith<Instrument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstrumentCopyWith<$Res> {
  factory $InstrumentCopyWith(
          Instrument value, $Res Function(Instrument) then) =
      _$InstrumentCopyWithImpl<$Res, Instrument>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? apiKey,
      String privateKey,
      String publicKey,
      Set<String> enabledAims,
      Map<String, int>? perAimBudget,
      bool locationIsFixed,
      String? url,
      Location? defaultLocation,
      CustomGenerator? customGenerator});

  $LocationCopyWith<$Res>? get defaultLocation;
  $CustomGeneratorCopyWith<$Res>? get customGenerator;
}

/// @nodoc
class _$InstrumentCopyWithImpl<$Res, $Val extends Instrument>
    implements $InstrumentCopyWith<$Res> {
  _$InstrumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiKey = freezed,
    Object? privateKey = null,
    Object? publicKey = null,
    Object? enabledAims = null,
    Object? perAimBudget = freezed,
    Object? locationIsFixed = null,
    Object? url = freezed,
    Object? defaultLocation = freezed,
    Object? customGenerator = freezed,
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
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: null == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAims: null == enabledAims
          ? _value.enabledAims
          : enabledAims // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      perAimBudget: freezed == perAimBudget
          ? _value.perAimBudget
          : perAimBudget // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      locationIsFixed: null == locationIsFixed
          ? _value.locationIsFixed
          : locationIsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocation: freezed == defaultLocation
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      customGenerator: freezed == customGenerator
          ? _value.customGenerator
          : customGenerator // ignore: cast_nullable_to_non_nullable
              as CustomGenerator?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get defaultLocation {
    if (_value.defaultLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.defaultLocation!, (value) {
      return _then(_value.copyWith(defaultLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomGeneratorCopyWith<$Res>? get customGenerator {
    if (_value.customGenerator == null) {
      return null;
    }

    return $CustomGeneratorCopyWith<$Res>(_value.customGenerator!, (value) {
      return _then(_value.copyWith(customGenerator: value) as $Val);
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
  @useResult
  $Res call(
      {String id,
      String name,
      String? apiKey,
      String privateKey,
      String publicKey,
      Set<String> enabledAims,
      Map<String, int>? perAimBudget,
      bool locationIsFixed,
      String? url,
      Location? defaultLocation,
      CustomGenerator? customGenerator});

  @override
  $LocationCopyWith<$Res>? get defaultLocation;
  @override
  $CustomGeneratorCopyWith<$Res>? get customGenerator;
}

/// @nodoc
class __$$_InstrumentCopyWithImpl<$Res>
    extends _$InstrumentCopyWithImpl<$Res, _$_Instrument>
    implements _$$_InstrumentCopyWith<$Res> {
  __$$_InstrumentCopyWithImpl(
      _$_Instrument _value, $Res Function(_$_Instrument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiKey = freezed,
    Object? privateKey = null,
    Object? publicKey = null,
    Object? enabledAims = null,
    Object? perAimBudget = freezed,
    Object? locationIsFixed = null,
    Object? url = freezed,
    Object? defaultLocation = freezed,
    Object? customGenerator = freezed,
  }) {
    return _then(_$_Instrument(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: null == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      enabledAims: null == enabledAims
          ? _value._enabledAims
          : enabledAims // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      perAimBudget: freezed == perAimBudget
          ? _value._perAimBudget
          : perAimBudget // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      locationIsFixed: null == locationIsFixed
          ? _value.locationIsFixed
          : locationIsFixed // ignore: cast_nullable_to_non_nullable
              as bool,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultLocation: freezed == defaultLocation
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      customGenerator: freezed == customGenerator
          ? _value.customGenerator
          : customGenerator // ignore: cast_nullable_to_non_nullable
              as CustomGenerator?,
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
      required final Map<String, int>? perAimBudget,
      required this.locationIsFixed,
      this.url,
      this.defaultLocation,
      this.customGenerator})
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
    if (_enabledAims is EqualUnmodifiableSetView) return _enabledAims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_enabledAims);
  }

  final Map<String, int>? _perAimBudget;
  @override
  Map<String, int>? get perAimBudget {
    final value = _perAimBudget;
    if (value == null) return null;
    if (_perAimBudget is EqualUnmodifiableMapView) return _perAimBudget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool locationIsFixed;
  @override
  final String? url;
  @override
  final Location? defaultLocation;
  @override
  final CustomGenerator? customGenerator;

  @override
  String toString() {
    return 'Instrument(id: $id, name: $name, apiKey: $apiKey, privateKey: $privateKey, publicKey: $publicKey, enabledAims: $enabledAims, perAimBudget: $perAimBudget, locationIsFixed: $locationIsFixed, url: $url, defaultLocation: $defaultLocation, customGenerator: $customGenerator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Instrument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            const DeepCollectionEquality()
                .equals(other._enabledAims, _enabledAims) &&
            const DeepCollectionEquality()
                .equals(other._perAimBudget, _perAimBudget) &&
            (identical(other.locationIsFixed, locationIsFixed) ||
                other.locationIsFixed == locationIsFixed) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.defaultLocation, defaultLocation) ||
                other.defaultLocation == defaultLocation) &&
            (identical(other.customGenerator, customGenerator) ||
                other.customGenerator == customGenerator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      apiKey,
      privateKey,
      publicKey,
      const DeepCollectionEquality().hash(_enabledAims),
      const DeepCollectionEquality().hash(_perAimBudget),
      locationIsFixed,
      url,
      defaultLocation,
      customGenerator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      required final Map<String, int>? perAimBudget,
      required final bool locationIsFixed,
      final String? url,
      final Location? defaultLocation,
      final CustomGenerator? customGenerator}) = _$_Instrument;

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
  Map<String, int>? get perAimBudget;
  @override
  bool get locationIsFixed;
  @override
  String? get url;
  @override
  Location? get defaultLocation;
  @override
  CustomGenerator? get customGenerator;
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
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

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
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_Location(
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

CustomGenerator _$CustomGeneratorFromJson(Map<String, dynamic> json) {
  return _CustomGenerator.fromJson(json);
}

/// @nodoc
mixin _$CustomGenerator {
  String get title => throw _privateConstructorUsedError;
  bool get enableCustomGeneration => throw _privateConstructorUsedError;
  List<Template> get templates => throw _privateConstructorUsedError;
  Logo? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomGeneratorCopyWith<CustomGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomGeneratorCopyWith<$Res> {
  factory $CustomGeneratorCopyWith(
          CustomGenerator value, $Res Function(CustomGenerator) then) =
      _$CustomGeneratorCopyWithImpl<$Res, CustomGenerator>;
  @useResult
  $Res call(
      {String title,
      bool enableCustomGeneration,
      List<Template> templates,
      Logo? logo});

  $LogoCopyWith<$Res>? get logo;
}

/// @nodoc
class _$CustomGeneratorCopyWithImpl<$Res, $Val extends CustomGenerator>
    implements $CustomGeneratorCopyWith<$Res> {
  _$CustomGeneratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? enableCustomGeneration = null,
    Object? templates = null,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      enableCustomGeneration: null == enableCustomGeneration
          ? _value.enableCustomGeneration
          : enableCustomGeneration // ignore: cast_nullable_to_non_nullable
              as bool,
      templates: null == templates
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<Template>,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $LogoCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomGeneratorCopyWith<$Res>
    implements $CustomGeneratorCopyWith<$Res> {
  factory _$$_CustomGeneratorCopyWith(
          _$_CustomGenerator value, $Res Function(_$_CustomGenerator) then) =
      __$$_CustomGeneratorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool enableCustomGeneration,
      List<Template> templates,
      Logo? logo});

  @override
  $LogoCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$_CustomGeneratorCopyWithImpl<$Res>
    extends _$CustomGeneratorCopyWithImpl<$Res, _$_CustomGenerator>
    implements _$$_CustomGeneratorCopyWith<$Res> {
  __$$_CustomGeneratorCopyWithImpl(
      _$_CustomGenerator _value, $Res Function(_$_CustomGenerator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? enableCustomGeneration = null,
    Object? templates = null,
    Object? logo = freezed,
  }) {
    return _then(_$_CustomGenerator(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      enableCustomGeneration: null == enableCustomGeneration
          ? _value.enableCustomGeneration
          : enableCustomGeneration // ignore: cast_nullable_to_non_nullable
              as bool,
      templates: null == templates
          ? _value._templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<Template>,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as Logo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomGenerator implements _CustomGenerator {
  const _$_CustomGenerator(
      {required this.title,
      required this.enableCustomGeneration,
      required final List<Template> templates,
      this.logo})
      : _templates = templates;

  factory _$_CustomGenerator.fromJson(Map<String, dynamic> json) =>
      _$$_CustomGeneratorFromJson(json);

  @override
  final String title;
  @override
  final bool enableCustomGeneration;
  final List<Template> _templates;
  @override
  List<Template> get templates {
    if (_templates is EqualUnmodifiableListView) return _templates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templates);
  }

  @override
  final Logo? logo;

  @override
  String toString() {
    return 'CustomGenerator(title: $title, enableCustomGeneration: $enableCustomGeneration, templates: $templates, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomGenerator &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.enableCustomGeneration, enableCustomGeneration) ||
                other.enableCustomGeneration == enableCustomGeneration) &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, enableCustomGeneration,
      const DeepCollectionEquality().hash(_templates), logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomGeneratorCopyWith<_$_CustomGenerator> get copyWith =>
      __$$_CustomGeneratorCopyWithImpl<_$_CustomGenerator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomGeneratorToJson(
      this,
    );
  }
}

abstract class _CustomGenerator implements CustomGenerator {
  const factory _CustomGenerator(
      {required final String title,
      required final bool enableCustomGeneration,
      required final List<Template> templates,
      final Logo? logo}) = _$_CustomGenerator;

  factory _CustomGenerator.fromJson(Map<String, dynamic> json) =
      _$_CustomGenerator.fromJson;

  @override
  String get title;
  @override
  bool get enableCustomGeneration;
  @override
  List<Template> get templates;
  @override
  Logo? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_CustomGeneratorCopyWith<_$_CustomGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}

Template _$TemplateFromJson(Map<String, dynamic> json) {
  return _Template.fromJson(json);
}

/// @nodoc
mixin _$Template {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get guide => throw _privateConstructorUsedError;
  String? get presetWomAim => throw _privateConstructorUsedError;
  int? get presetWomCount => throw _privateConstructorUsedError;
  Location? get presetWomLocation => throw _privateConstructorUsedError;
  bool get batchGeneration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateCopyWith<Template> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) then) =
      _$TemplateCopyWithImpl<$Res, Template>;
  @useResult
  $Res call(
      {String name,
      String description,
      String? guide,
      String? presetWomAim,
      int? presetWomCount,
      Location? presetWomLocation,
      bool batchGeneration});

  $LocationCopyWith<$Res>? get presetWomLocation;
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res, $Val extends Template>
    implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? guide = freezed,
    Object? presetWomAim = freezed,
    Object? presetWomCount = freezed,
    Object? presetWomLocation = freezed,
    Object? batchGeneration = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      presetWomAim: freezed == presetWomAim
          ? _value.presetWomAim
          : presetWomAim // ignore: cast_nullable_to_non_nullable
              as String?,
      presetWomCount: freezed == presetWomCount
          ? _value.presetWomCount
          : presetWomCount // ignore: cast_nullable_to_non_nullable
              as int?,
      presetWomLocation: freezed == presetWomLocation
          ? _value.presetWomLocation
          : presetWomLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      batchGeneration: null == batchGeneration
          ? _value.batchGeneration
          : batchGeneration // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get presetWomLocation {
    if (_value.presetWomLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.presetWomLocation!, (value) {
      return _then(_value.copyWith(presetWomLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TemplateCopyWith<$Res> implements $TemplateCopyWith<$Res> {
  factory _$$_TemplateCopyWith(
          _$_Template value, $Res Function(_$_Template) then) =
      __$$_TemplateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String? guide,
      String? presetWomAim,
      int? presetWomCount,
      Location? presetWomLocation,
      bool batchGeneration});

  @override
  $LocationCopyWith<$Res>? get presetWomLocation;
}

/// @nodoc
class __$$_TemplateCopyWithImpl<$Res>
    extends _$TemplateCopyWithImpl<$Res, _$_Template>
    implements _$$_TemplateCopyWith<$Res> {
  __$$_TemplateCopyWithImpl(
      _$_Template _value, $Res Function(_$_Template) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? guide = freezed,
    Object? presetWomAim = freezed,
    Object? presetWomCount = freezed,
    Object? presetWomLocation = freezed,
    Object? batchGeneration = null,
  }) {
    return _then(_$_Template(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      guide: freezed == guide
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      presetWomAim: freezed == presetWomAim
          ? _value.presetWomAim
          : presetWomAim // ignore: cast_nullable_to_non_nullable
              as String?,
      presetWomCount: freezed == presetWomCount
          ? _value.presetWomCount
          : presetWomCount // ignore: cast_nullable_to_non_nullable
              as int?,
      presetWomLocation: freezed == presetWomLocation
          ? _value.presetWomLocation
          : presetWomLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      batchGeneration: null == batchGeneration
          ? _value.batchGeneration
          : batchGeneration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Template implements _Template {
  const _$_Template(
      {required this.name,
      required this.description,
      this.guide,
      this.presetWomAim,
      this.presetWomCount,
      this.presetWomLocation,
      this.batchGeneration = false});

  factory _$_Template.fromJson(Map<String, dynamic> json) =>
      _$$_TemplateFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String? guide;
  @override
  final String? presetWomAim;
  @override
  final int? presetWomCount;
  @override
  final Location? presetWomLocation;
  @override
  @JsonKey()
  final bool batchGeneration;

  @override
  String toString() {
    return 'Template(name: $name, description: $description, guide: $guide, presetWomAim: $presetWomAim, presetWomCount: $presetWomCount, presetWomLocation: $presetWomLocation, batchGeneration: $batchGeneration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Template &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            (identical(other.presetWomAim, presetWomAim) ||
                other.presetWomAim == presetWomAim) &&
            (identical(other.presetWomCount, presetWomCount) ||
                other.presetWomCount == presetWomCount) &&
            (identical(other.presetWomLocation, presetWomLocation) ||
                other.presetWomLocation == presetWomLocation) &&
            (identical(other.batchGeneration, batchGeneration) ||
                other.batchGeneration == batchGeneration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, guide,
      presetWomAim, presetWomCount, presetWomLocation, batchGeneration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemplateCopyWith<_$_Template> get copyWith =>
      __$$_TemplateCopyWithImpl<_$_Template>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemplateToJson(
      this,
    );
  }
}

abstract class _Template implements Template {
  const factory _Template(
      {required final String name,
      required final String description,
      final String? guide,
      final String? presetWomAim,
      final int? presetWomCount,
      final Location? presetWomLocation,
      final bool batchGeneration}) = _$_Template;

  factory _Template.fromJson(Map<String, dynamic> json) = _$_Template.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String? get guide;
  @override
  String? get presetWomAim;
  @override
  int? get presetWomCount;
  @override
  Location? get presetWomLocation;
  @override
  bool get batchGeneration;
  @override
  @JsonKey(ignore: true)
  _$$_TemplateCopyWith<_$_Template> get copyWith =>
      throw _privateConstructorUsedError;
}

Logo _$LogoFromJson(Map<String, dynamic> json) {
  return _Logo.fromJson(json);
}

/// @nodoc
mixin _$Logo {
  String get fullSizeUrl => throw _privateConstructorUsedError;
  String get midDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get highDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get squareThumbnailUrl => throw _privateConstructorUsedError;
  String get blurHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoCopyWith<Logo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoCopyWith<$Res> {
  factory $LogoCopyWith(Logo value, $Res Function(Logo) then) =
      _$LogoCopyWithImpl<$Res, Logo>;
  @useResult
  $Res call(
      {String fullSizeUrl,
      String midDensityFullWidthUrl,
      String highDensityFullWidthUrl,
      String squareThumbnailUrl,
      String blurHash});
}

/// @nodoc
class _$LogoCopyWithImpl<$Res, $Val extends Logo>
    implements $LogoCopyWith<$Res> {
  _$LogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSizeUrl = null,
    Object? midDensityFullWidthUrl = null,
    Object? highDensityFullWidthUrl = null,
    Object? squareThumbnailUrl = null,
    Object? blurHash = null,
  }) {
    return _then(_value.copyWith(
      fullSizeUrl: null == fullSizeUrl
          ? _value.fullSizeUrl
          : fullSizeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      midDensityFullWidthUrl: null == midDensityFullWidthUrl
          ? _value.midDensityFullWidthUrl
          : midDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highDensityFullWidthUrl: null == highDensityFullWidthUrl
          ? _value.highDensityFullWidthUrl
          : highDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      squareThumbnailUrl: null == squareThumbnailUrl
          ? _value.squareThumbnailUrl
          : squareThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogoCopyWith<$Res> implements $LogoCopyWith<$Res> {
  factory _$$_LogoCopyWith(_$_Logo value, $Res Function(_$_Logo) then) =
      __$$_LogoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullSizeUrl,
      String midDensityFullWidthUrl,
      String highDensityFullWidthUrl,
      String squareThumbnailUrl,
      String blurHash});
}

/// @nodoc
class __$$_LogoCopyWithImpl<$Res> extends _$LogoCopyWithImpl<$Res, _$_Logo>
    implements _$$_LogoCopyWith<$Res> {
  __$$_LogoCopyWithImpl(_$_Logo _value, $Res Function(_$_Logo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSizeUrl = null,
    Object? midDensityFullWidthUrl = null,
    Object? highDensityFullWidthUrl = null,
    Object? squareThumbnailUrl = null,
    Object? blurHash = null,
  }) {
    return _then(_$_Logo(
      fullSizeUrl: null == fullSizeUrl
          ? _value.fullSizeUrl
          : fullSizeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      midDensityFullWidthUrl: null == midDensityFullWidthUrl
          ? _value.midDensityFullWidthUrl
          : midDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highDensityFullWidthUrl: null == highDensityFullWidthUrl
          ? _value.highDensityFullWidthUrl
          : highDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      squareThumbnailUrl: null == squareThumbnailUrl
          ? _value.squareThumbnailUrl
          : squareThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Logo implements _Logo {
  const _$_Logo(
      {required this.fullSizeUrl,
      required this.midDensityFullWidthUrl,
      required this.highDensityFullWidthUrl,
      required this.squareThumbnailUrl,
      required this.blurHash});

  factory _$_Logo.fromJson(Map<String, dynamic> json) => _$$_LogoFromJson(json);

  @override
  final String fullSizeUrl;
  @override
  final String midDensityFullWidthUrl;
  @override
  final String highDensityFullWidthUrl;
  @override
  final String squareThumbnailUrl;
  @override
  final String blurHash;

  @override
  String toString() {
    return 'Logo(fullSizeUrl: $fullSizeUrl, midDensityFullWidthUrl: $midDensityFullWidthUrl, highDensityFullWidthUrl: $highDensityFullWidthUrl, squareThumbnailUrl: $squareThumbnailUrl, blurHash: $blurHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logo &&
            (identical(other.fullSizeUrl, fullSizeUrl) ||
                other.fullSizeUrl == fullSizeUrl) &&
            (identical(other.midDensityFullWidthUrl, midDensityFullWidthUrl) ||
                other.midDensityFullWidthUrl == midDensityFullWidthUrl) &&
            (identical(
                    other.highDensityFullWidthUrl, highDensityFullWidthUrl) ||
                other.highDensityFullWidthUrl == highDensityFullWidthUrl) &&
            (identical(other.squareThumbnailUrl, squareThumbnailUrl) ||
                other.squareThumbnailUrl == squareThumbnailUrl) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullSizeUrl,
      midDensityFullWidthUrl,
      highDensityFullWidthUrl,
      squareThumbnailUrl,
      blurHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoCopyWith<_$_Logo> get copyWith =>
      __$$_LogoCopyWithImpl<_$_Logo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoToJson(
      this,
    );
  }
}

abstract class _Logo implements Logo {
  const factory _Logo(
      {required final String fullSizeUrl,
      required final String midDensityFullWidthUrl,
      required final String highDensityFullWidthUrl,
      required final String squareThumbnailUrl,
      required final String blurHash}) = _$_Logo;

  factory _Logo.fromJson(Map<String, dynamic> json) = _$_Logo.fromJson;

  @override
  String get fullSizeUrl;
  @override
  String get midDensityFullWidthUrl;
  @override
  String get highDensityFullWidthUrl;
  @override
  String get squareThumbnailUrl;
  @override
  String get blurHash;
  @override
  @JsonKey(ignore: true)
  _$$_LogoCopyWith<_$_Logo> get copyWith => throw _privateConstructorUsedError;
}
