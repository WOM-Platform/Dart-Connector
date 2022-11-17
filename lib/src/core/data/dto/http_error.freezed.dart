// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpErrorDTO _$HttpErrorDTOFromJson(Map<String, dynamic> json) {
  return _HttpErrorDTO.fromJson(json);
}

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
      _$HttpErrorDTOCopyWithImpl<$Res, HttpErrorDTO>;
  @useResult
  $Res call({String type, String title, int status});
}

/// @nodoc
class _$HttpErrorDTOCopyWithImpl<$Res, $Val extends HttpErrorDTO>
    implements $HttpErrorDTOCopyWith<$Res> {
  _$HttpErrorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HttpErrorDTOCopyWith<$Res>
    implements $HttpErrorDTOCopyWith<$Res> {
  factory _$$_HttpErrorDTOCopyWith(
          _$_HttpErrorDTO value, $Res Function(_$_HttpErrorDTO) then) =
      __$$_HttpErrorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String title, int status});
}

/// @nodoc
class __$$_HttpErrorDTOCopyWithImpl<$Res>
    extends _$HttpErrorDTOCopyWithImpl<$Res, _$_HttpErrorDTO>
    implements _$$_HttpErrorDTOCopyWith<$Res> {
  __$$_HttpErrorDTOCopyWithImpl(
      _$_HttpErrorDTO _value, $Res Function(_$_HttpErrorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
  }) {
    return _then(_$_HttpErrorDTO(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
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
        (other.runtimeType == runtimeType &&
            other is _$_HttpErrorDTO &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpErrorDTOCopyWith<_$_HttpErrorDTO> get copyWith =>
      __$$_HttpErrorDTOCopyWithImpl<_$_HttpErrorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpErrorDTOToJson(
      this,
    );
  }
}

abstract class _HttpErrorDTO implements HttpErrorDTO {
  const factory _HttpErrorDTO(
      {required final String type,
      required final String title,
      required final int status}) = _$_HttpErrorDTO;

  factory _HttpErrorDTO.fromJson(Map<String, dynamic> json) =
      _$_HttpErrorDTO.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_HttpErrorDTOCopyWith<_$_HttpErrorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
