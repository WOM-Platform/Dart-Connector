// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpErrorDTO _$HttpErrorDTOFromJson(Map<String, dynamic> json) {
  return _HttpErrorDTO.fromJson(json);
}

/// @nodoc
class _$HttpErrorDTOTearOff {
  const _$HttpErrorDTOTearOff();

  _HttpErrorDTO call(
      {required String type, required String title, required int status}) {
    return _HttpErrorDTO(
      type: type,
      title: title,
      status: status,
    );
  }

  HttpErrorDTO fromJson(Map<String, Object> json) {
    return HttpErrorDTO.fromJson(json);
  }
}

/// @nodoc
const $HttpErrorDTO = _$HttpErrorDTOTearOff();

/// @nodoc
mixin _$HttpErrorDTO {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpErrorDTOCopyWith<HttpErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpErrorDTOCopyWith<$Res> {
  factory $HttpErrorDTOCopyWith(
          HttpErrorDTO value, $Res Function(HttpErrorDTO) then) =
      _$HttpErrorDTOCopyWithImpl<$Res>;
  $Res call({String type, String title, int status});
}

/// @nodoc
class _$HttpErrorDTOCopyWithImpl<$Res> implements $HttpErrorDTOCopyWith<$Res> {
  _$HttpErrorDTOCopyWithImpl(this._value, this._then);

  final HttpErrorDTO _value;
  // ignore: unused_field
  final $Res Function(HttpErrorDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HttpErrorDTOCopyWith<$Res>
    implements $HttpErrorDTOCopyWith<$Res> {
  factory _$HttpErrorDTOCopyWith(
          _HttpErrorDTO value, $Res Function(_HttpErrorDTO) then) =
      __$HttpErrorDTOCopyWithImpl<$Res>;
  @override
  $Res call({String type, String title, int status});
}

/// @nodoc
class __$HttpErrorDTOCopyWithImpl<$Res> extends _$HttpErrorDTOCopyWithImpl<$Res>
    implements _$HttpErrorDTOCopyWith<$Res> {
  __$HttpErrorDTOCopyWithImpl(
      _HttpErrorDTO _value, $Res Function(_HttpErrorDTO) _then)
      : super(_value, (v) => _then(v as _HttpErrorDTO));

  @override
  _HttpErrorDTO get _value => super._value as _HttpErrorDTO;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
  }) {
    return _then(_HttpErrorDTO(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpErrorDTO implements _HttpErrorDTO {
  const _$_HttpErrorDTO(
      {required this.type, required this.title, required this.status});

  factory _$_HttpErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_HttpErrorDTOFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final int status;

  @override
  String toString() {
    return 'HttpErrorDTO(type: $type, title: $title, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HttpErrorDTO &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$HttpErrorDTOCopyWith<_HttpErrorDTO> get copyWith =>
      __$HttpErrorDTOCopyWithImpl<_HttpErrorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpErrorDTOToJson(this);
  }
}

abstract class _HttpErrorDTO implements HttpErrorDTO {
  const factory _HttpErrorDTO(
      {required String type,
      required String title,
      required int status}) = _$_HttpErrorDTO;

  factory _HttpErrorDTO.fromJson(Map<String, dynamic> json) =
      _$_HttpErrorDTO.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HttpErrorDTOCopyWith<_HttpErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
