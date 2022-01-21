// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'aim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AimResponse _$AimResponseFromJson(Map<String, dynamic> json) {
  return _AimResponse.fromJson(json);
}

/// @nodoc
class _$AimResponseTearOff {
  const _$AimResponseTearOff();

  _AimResponse call({required List<AimDTO> aims}) {
    return _AimResponse(
      aims: aims,
    );
  }

  AimResponse fromJson(Map<String, Object> json) {
    return AimResponse.fromJson(json);
  }
}

/// @nodoc
const $AimResponse = _$AimResponseTearOff();

/// @nodoc
mixin _$AimResponse {
  List<AimDTO> get aims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AimResponseCopyWith<AimResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AimResponseCopyWith<$Res> {
  factory $AimResponseCopyWith(
          AimResponse value, $Res Function(AimResponse) then) =
      _$AimResponseCopyWithImpl<$Res>;
  $Res call({List<AimDTO> aims});
}

/// @nodoc
class _$AimResponseCopyWithImpl<$Res> implements $AimResponseCopyWith<$Res> {
  _$AimResponseCopyWithImpl(this._value, this._then);

  final AimResponse _value;
  // ignore: unused_field
  final $Res Function(AimResponse) _then;

  @override
  $Res call({
    Object? aims = freezed,
  }) {
    return _then(_value.copyWith(
      aims: aims == freezed
          ? _value.aims
          : aims // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>,
    ));
  }
}

/// @nodoc
abstract class _$AimResponseCopyWith<$Res>
    implements $AimResponseCopyWith<$Res> {
  factory _$AimResponseCopyWith(
          _AimResponse value, $Res Function(_AimResponse) then) =
      __$AimResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<AimDTO> aims});
}

/// @nodoc
class __$AimResponseCopyWithImpl<$Res> extends _$AimResponseCopyWithImpl<$Res>
    implements _$AimResponseCopyWith<$Res> {
  __$AimResponseCopyWithImpl(
      _AimResponse _value, $Res Function(_AimResponse) _then)
      : super(_value, (v) => _then(v as _AimResponse));

  @override
  _AimResponse get _value => super._value as _AimResponse;

  @override
  $Res call({
    Object? aims = freezed,
  }) {
    return _then(_AimResponse(
      aims: aims == freezed
          ? _value.aims
          : aims // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AimResponse implements _AimResponse {
  const _$_AimResponse({required this.aims});

  factory _$_AimResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AimResponseFromJson(json);

  @override
  final List<AimDTO> aims;

  @override
  String toString() {
    return 'AimResponse(aims: $aims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AimResponse &&
            (identical(other.aims, aims) ||
                const DeepCollectionEquality().equals(other.aims, aims)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(aims);

  @JsonKey(ignore: true)
  @override
  _$AimResponseCopyWith<_AimResponse> get copyWith =>
      __$AimResponseCopyWithImpl<_AimResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AimResponseToJson(this);
  }
}

abstract class _AimResponse implements AimResponse {
  const factory _AimResponse({required List<AimDTO> aims}) = _$_AimResponse;

  factory _AimResponse.fromJson(Map<String, dynamic> json) =
      _$_AimResponse.fromJson;

  @override
  List<AimDTO> get aims => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AimResponseCopyWith<_AimResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AimDTO _$AimDTOFromJson(Map<String, dynamic> json) {
  return _AimDTO.fromJson(json);
}

/// @nodoc
class _$AimDTOTearOff {
  const _$AimDTOTearOff();

  _AimDTO call(
      {required String code,
      required Map<String, dynamic>? titles,
      String? iconFile,
      List<AimDTO>? children}) {
    return _AimDTO(
      code: code,
      titles: titles,
      iconFile: iconFile,
      children: children,
    );
  }

  AimDTO fromJson(Map<String, Object> json) {
    return AimDTO.fromJson(json);
  }
}

/// @nodoc
const $AimDTO = _$AimDTOTearOff();

/// @nodoc
mixin _$AimDTO {
  String get code => throw _privateConstructorUsedError;
  Map<String, dynamic>? get titles => throw _privateConstructorUsedError;
  String? get iconFile => throw _privateConstructorUsedError;
  List<AimDTO>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AimDTOCopyWith<AimDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AimDTOCopyWith<$Res> {
  factory $AimDTOCopyWith(AimDTO value, $Res Function(AimDTO) then) =
      _$AimDTOCopyWithImpl<$Res>;
  $Res call(
      {String code,
      Map<String, dynamic>? titles,
      String? iconFile,
      List<AimDTO>? children});
}

/// @nodoc
class _$AimDTOCopyWithImpl<$Res> implements $AimDTOCopyWith<$Res> {
  _$AimDTOCopyWithImpl(this._value, this._then);

  final AimDTO _value;
  // ignore: unused_field
  final $Res Function(AimDTO) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? titles = freezed,
    Object? iconFile = freezed,
    Object? children = freezed,
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
      iconFile: iconFile == freezed
          ? _value.iconFile
          : iconFile // ignore: cast_nullable_to_non_nullable
              as String?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$AimDTOCopyWith<$Res> implements $AimDTOCopyWith<$Res> {
  factory _$AimDTOCopyWith(_AimDTO value, $Res Function(_AimDTO) then) =
      __$AimDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      Map<String, dynamic>? titles,
      String? iconFile,
      List<AimDTO>? children});
}

/// @nodoc
class __$AimDTOCopyWithImpl<$Res> extends _$AimDTOCopyWithImpl<$Res>
    implements _$AimDTOCopyWith<$Res> {
  __$AimDTOCopyWithImpl(_AimDTO _value, $Res Function(_AimDTO) _then)
      : super(_value, (v) => _then(v as _AimDTO));

  @override
  _AimDTO get _value => super._value as _AimDTO;

  @override
  $Res call({
    Object? code = freezed,
    Object? titles = freezed,
    Object? iconFile = freezed,
    Object? children = freezed,
  }) {
    return _then(_AimDTO(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titles: titles == freezed
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconFile: iconFile == freezed
          ? _value.iconFile
          : iconFile // ignore: cast_nullable_to_non_nullable
              as String?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AimDTO implements _AimDTO {
  const _$_AimDTO(
      {required this.code, required this.titles, this.iconFile, this.children});

  factory _$_AimDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AimDTOFromJson(json);

  @override
  final String code;
  @override
  final Map<String, dynamic>? titles;
  @override
  final String? iconFile;
  @override
  final List<AimDTO>? children;

  @override
  String toString() {
    return 'AimDTO(code: $code, titles: $titles, iconFile: $iconFile, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AimDTO &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.titles, titles) ||
                const DeepCollectionEquality().equals(other.titles, titles)) &&
            (identical(other.iconFile, iconFile) ||
                const DeepCollectionEquality()
                    .equals(other.iconFile, iconFile)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(titles) ^
      const DeepCollectionEquality().hash(iconFile) ^
      const DeepCollectionEquality().hash(children);

  @JsonKey(ignore: true)
  @override
  _$AimDTOCopyWith<_AimDTO> get copyWith =>
      __$AimDTOCopyWithImpl<_AimDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AimDTOToJson(this);
  }
}

abstract class _AimDTO implements AimDTO {
  const factory _AimDTO(
      {required String code,
      required Map<String, dynamic>? titles,
      String? iconFile,
      List<AimDTO>? children}) = _$_AimDTO;

  factory _AimDTO.fromJson(Map<String, dynamic> json) = _$_AimDTO.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get titles => throw _privateConstructorUsedError;
  @override
  String? get iconFile => throw _privateConstructorUsedError;
  @override
  List<AimDTO>? get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AimDTOCopyWith<_AimDTO> get copyWith => throw _privateConstructorUsedError;
}
