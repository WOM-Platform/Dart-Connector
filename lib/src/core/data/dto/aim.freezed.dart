// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aim.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AimResponse _$AimResponseFromJson(Map<String, dynamic> json) {
  return _AimResponse.fromJson(json);
}

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
abstract class _$$_AimResponseCopyWith<$Res>
    implements $AimResponseCopyWith<$Res> {
  factory _$$_AimResponseCopyWith(
          _$_AimResponse value, $Res Function(_$_AimResponse) then) =
      __$$_AimResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<AimDTO> aims});
}

/// @nodoc
class __$$_AimResponseCopyWithImpl<$Res> extends _$AimResponseCopyWithImpl<$Res>
    implements _$$_AimResponseCopyWith<$Res> {
  __$$_AimResponseCopyWithImpl(
      _$_AimResponse _value, $Res Function(_$_AimResponse) _then)
      : super(_value, (v) => _then(v as _$_AimResponse));

  @override
  _$_AimResponse get _value => super._value as _$_AimResponse;

  @override
  $Res call({
    Object? aims = freezed,
  }) {
    return _then(_$_AimResponse(
      aims: aims == freezed
          ? _value._aims
          : aims // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AimResponse implements _AimResponse {
  const _$_AimResponse({required final List<AimDTO> aims}) : _aims = aims;

  factory _$_AimResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AimResponseFromJson(json);

  final List<AimDTO> _aims;
  @override
  List<AimDTO> get aims {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aims);
  }

  @override
  String toString() {
    return 'AimResponse(aims: $aims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AimResponse &&
            const DeepCollectionEquality().equals(other._aims, _aims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_aims));

  @JsonKey(ignore: true)
  @override
  _$$_AimResponseCopyWith<_$_AimResponse> get copyWith =>
      __$$_AimResponseCopyWithImpl<_$_AimResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AimResponseToJson(
      this,
    );
  }
}

abstract class _AimResponse implements AimResponse {
  const factory _AimResponse({required final List<AimDTO> aims}) =
      _$_AimResponse;

  factory _AimResponse.fromJson(Map<String, dynamic> json) =
      _$_AimResponse.fromJson;

  @override
  List<AimDTO> get aims;
  @override
  @JsonKey(ignore: true)
  _$$_AimResponseCopyWith<_$_AimResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AimDTO _$AimDTOFromJson(Map<String, dynamic> json) {
  return _AimDTO.fromJson(json);
}

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
abstract class _$$_AimDTOCopyWith<$Res> implements $AimDTOCopyWith<$Res> {
  factory _$$_AimDTOCopyWith(_$_AimDTO value, $Res Function(_$_AimDTO) then) =
      __$$_AimDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      Map<String, dynamic>? titles,
      String? iconFile,
      List<AimDTO>? children});
}

/// @nodoc
class __$$_AimDTOCopyWithImpl<$Res> extends _$AimDTOCopyWithImpl<$Res>
    implements _$$_AimDTOCopyWith<$Res> {
  __$$_AimDTOCopyWithImpl(_$_AimDTO _value, $Res Function(_$_AimDTO) _then)
      : super(_value, (v) => _then(v as _$_AimDTO));

  @override
  _$_AimDTO get _value => super._value as _$_AimDTO;

  @override
  $Res call({
    Object? code = freezed,
    Object? titles = freezed,
    Object? iconFile = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_AimDTO(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      titles: titles == freezed
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      iconFile: iconFile == freezed
          ? _value.iconFile
          : iconFile // ignore: cast_nullable_to_non_nullable
              as String?,
      children: children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<AimDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AimDTO implements _AimDTO {
  const _$_AimDTO(
      {required this.code,
      required final Map<String, dynamic>? titles,
      this.iconFile,
      final List<AimDTO>? children})
      : _titles = titles,
        _children = children;

  factory _$_AimDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AimDTOFromJson(json);

  @override
  final String code;
  final Map<String, dynamic>? _titles;
  @override
  Map<String, dynamic>? get titles {
    final value = _titles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? iconFile;
  final List<AimDTO>? _children;
  @override
  List<AimDTO>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AimDTO(code: $code, titles: $titles, iconFile: $iconFile, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AimDTO &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other._titles, _titles) &&
            const DeepCollectionEquality().equals(other.iconFile, iconFile) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(_titles),
      const DeepCollectionEquality().hash(iconFile),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_AimDTOCopyWith<_$_AimDTO> get copyWith =>
      __$$_AimDTOCopyWithImpl<_$_AimDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AimDTOToJson(
      this,
    );
  }
}

abstract class _AimDTO implements AimDTO {
  const factory _AimDTO(
      {required final String code,
      required final Map<String, dynamic>? titles,
      final String? iconFile,
      final List<AimDTO>? children}) = _$_AimDTO;

  factory _AimDTO.fromJson(Map<String, dynamic> json) = _$_AimDTO.fromJson;

  @override
  String get code;
  @override
  Map<String, dynamic>? get titles;
  @override
  String? get iconFile;
  @override
  List<AimDTO>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_AimDTOCopyWith<_$_AimDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
