// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthExchangeResponse _$AuthExchangeResponseFromJson(Map<String, dynamic> json) {
  return _AuthExchangeResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthExchangeResponse {
  String get sourceId => throw _privateConstructorUsedError;
  String get sourcePublicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthExchangeResponseCopyWith<AuthExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExchangeResponseCopyWith<$Res> {
  factory $AuthExchangeResponseCopyWith(AuthExchangeResponse value,
          $Res Function(AuthExchangeResponse) then) =
      _$AuthExchangeResponseCopyWithImpl<$Res, AuthExchangeResponse>;
  @useResult
  $Res call({String sourceId, String sourcePublicKey});
}

/// @nodoc
class _$AuthExchangeResponseCopyWithImpl<$Res,
        $Val extends AuthExchangeResponse>
    implements $AuthExchangeResponseCopyWith<$Res> {
  _$AuthExchangeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? sourcePublicKey = null,
  }) {
    return _then(_value.copyWith(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      sourcePublicKey: null == sourcePublicKey
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthExchangeResponseCopyWith<$Res>
    implements $AuthExchangeResponseCopyWith<$Res> {
  factory _$$_AuthExchangeResponseCopyWith(_$_AuthExchangeResponse value,
          $Res Function(_$_AuthExchangeResponse) then) =
      __$$_AuthExchangeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceId, String sourcePublicKey});
}

/// @nodoc
class __$$_AuthExchangeResponseCopyWithImpl<$Res>
    extends _$AuthExchangeResponseCopyWithImpl<$Res, _$_AuthExchangeResponse>
    implements _$$_AuthExchangeResponseCopyWith<$Res> {
  __$$_AuthExchangeResponseCopyWithImpl(_$_AuthExchangeResponse _value,
      $Res Function(_$_AuthExchangeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? sourcePublicKey = null,
  }) {
    return _then(_$_AuthExchangeResponse(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      sourcePublicKey: null == sourcePublicKey
          ? _value.sourcePublicKey
          : sourcePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthExchangeResponse implements _AuthExchangeResponse {
  const _$_AuthExchangeResponse(
      {required this.sourceId, required this.sourcePublicKey});

  factory _$_AuthExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthExchangeResponseFromJson(json);

  @override
  final String sourceId;
  @override
  final String sourcePublicKey;

  @override
  String toString() {
    return 'AuthExchangeResponse(sourceId: $sourceId, sourcePublicKey: $sourcePublicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthExchangeResponse &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourcePublicKey, sourcePublicKey) ||
                other.sourcePublicKey == sourcePublicKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sourceId, sourcePublicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthExchangeResponseCopyWith<_$_AuthExchangeResponse> get copyWith =>
      __$$_AuthExchangeResponseCopyWithImpl<_$_AuthExchangeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthExchangeResponseToJson(
      this,
    );
  }
}

abstract class _AuthExchangeResponse implements AuthExchangeResponse {
  const factory _AuthExchangeResponse(
      {required final String sourceId,
      required final String sourcePublicKey}) = _$_AuthExchangeResponse;

  factory _AuthExchangeResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthExchangeResponse.fromJson;

  @override
  String get sourceId;
  @override
  String get sourcePublicKey;
  @override
  @JsonKey(ignore: true)
  _$$_AuthExchangeResponseCopyWith<_$_AuthExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
