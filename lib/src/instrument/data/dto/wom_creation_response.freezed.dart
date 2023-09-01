// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wom_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WomCreationResponseDTO _$WomCreationResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _WomCreationResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$WomCreationResponseDTO {
  String get registryUrl => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get otc => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WomCreationResponseDTOCopyWith<WomCreationResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WomCreationResponseDTOCopyWith<$Res> {
  factory $WomCreationResponseDTOCopyWith(WomCreationResponseDTO value,
          $Res Function(WomCreationResponseDTO) then) =
      _$WomCreationResponseDTOCopyWithImpl<$Res, WomCreationResponseDTO>;
  @useResult
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link,
      int count});
}

/// @nodoc
class _$WomCreationResponseDTOCopyWithImpl<$Res,
        $Val extends WomCreationResponseDTO>
    implements $WomCreationResponseDTOCopyWith<$Res> {
  _$WomCreationResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? nonce = null,
    Object? otc = null,
    Object? password = null,
    Object? link = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      otc: null == otc
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WomCreationResponseDTOCopyWith<$Res>
    implements $WomCreationResponseDTOCopyWith<$Res> {
  factory _$$_WomCreationResponseDTOCopyWith(_$_WomCreationResponseDTO value,
          $Res Function(_$_WomCreationResponseDTO) then) =
      __$$_WomCreationResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link,
      int count});
}

/// @nodoc
class __$$_WomCreationResponseDTOCopyWithImpl<$Res>
    extends _$WomCreationResponseDTOCopyWithImpl<$Res,
        _$_WomCreationResponseDTO>
    implements _$$_WomCreationResponseDTOCopyWith<$Res> {
  __$$_WomCreationResponseDTOCopyWithImpl(_$_WomCreationResponseDTO _value,
      $Res Function(_$_WomCreationResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? nonce = null,
    Object? otc = null,
    Object? password = null,
    Object? link = null,
    Object? count = null,
  }) {
    return _then(_$_WomCreationResponseDTO(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      otc: null == otc
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WomCreationResponseDTO implements _WomCreationResponseDTO {
  const _$_WomCreationResponseDTO(
      {required this.registryUrl,
      required this.nonce,
      required this.otc,
      required this.password,
      required this.link,
      required this.count});

  factory _$_WomCreationResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WomCreationResponseDTOFromJson(json);

  @override
  final String registryUrl;
  @override
  final String nonce;
  @override
  final String otc;
  @override
  final String password;
  @override
  final String link;
  @override
  final int count;

  @override
  String toString() {
    return 'WomCreationResponseDTO(registryUrl: $registryUrl, nonce: $nonce, otc: $otc, password: $password, link: $link, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WomCreationResponseDTO &&
            (identical(other.registryUrl, registryUrl) ||
                other.registryUrl == registryUrl) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.otc, otc) || other.otc == otc) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, registryUrl, nonce, otc, password, link, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WomCreationResponseDTOCopyWith<_$_WomCreationResponseDTO> get copyWith =>
      __$$_WomCreationResponseDTOCopyWithImpl<_$_WomCreationResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WomCreationResponseDTOToJson(
      this,
    );
  }
}

abstract class _WomCreationResponseDTO implements WomCreationResponseDTO {
  const factory _WomCreationResponseDTO(
      {required final String registryUrl,
      required final String nonce,
      required final String otc,
      required final String password,
      required final String link,
      required final int count}) = _$_WomCreationResponseDTO;

  factory _WomCreationResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_WomCreationResponseDTO.fromJson;

  @override
  String get registryUrl;
  @override
  String get nonce;
  @override
  String get otc;
  @override
  String get password;
  @override
  String get link;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_WomCreationResponseDTOCopyWith<_$_WomCreationResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
