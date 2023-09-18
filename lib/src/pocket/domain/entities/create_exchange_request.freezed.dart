// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exchange_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateExchangeRequest _$CreateExchangeRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateExchangeRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateExchangeRequest {
  String get sourceId => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateExchangeRequestCopyWith<CreateExchangeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExchangeRequestCopyWith<$Res> {
  factory $CreateExchangeRequestCopyWith(CreateExchangeRequest value,
          $Res Function(CreateExchangeRequest) then) =
      _$CreateExchangeRequestCopyWithImpl<$Res, CreateExchangeRequest>;
  @useResult
  $Res call({String sourceId, String nonce, String payload});
}

/// @nodoc
class _$CreateExchangeRequestCopyWithImpl<$Res,
        $Val extends CreateExchangeRequest>
    implements $CreateExchangeRequestCopyWith<$Res> {
  _$CreateExchangeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? nonce = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateExchangeRequestCopyWith<$Res>
    implements $CreateExchangeRequestCopyWith<$Res> {
  factory _$$_CreateExchangeRequestCopyWith(_$_CreateExchangeRequest value,
          $Res Function(_$_CreateExchangeRequest) then) =
      __$$_CreateExchangeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceId, String nonce, String payload});
}

/// @nodoc
class __$$_CreateExchangeRequestCopyWithImpl<$Res>
    extends _$CreateExchangeRequestCopyWithImpl<$Res, _$_CreateExchangeRequest>
    implements _$$_CreateExchangeRequestCopyWith<$Res> {
  __$$_CreateExchangeRequestCopyWithImpl(_$_CreateExchangeRequest _value,
      $Res Function(_$_CreateExchangeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? nonce = null,
    Object? payload = null,
  }) {
    return _then(_$_CreateExchangeRequest(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateExchangeRequest implements _CreateExchangeRequest {
  const _$_CreateExchangeRequest(
      {required this.sourceId, required this.nonce, required this.payload});

  factory _$_CreateExchangeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateExchangeRequestFromJson(json);

  @override
  final String sourceId;
  @override
  final String nonce;
  @override
  final String payload;

  @override
  String toString() {
    return 'CreateExchangeRequest(sourceId: $sourceId, nonce: $nonce, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateExchangeRequest &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sourceId, nonce, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateExchangeRequestCopyWith<_$_CreateExchangeRequest> get copyWith =>
      __$$_CreateExchangeRequestCopyWithImpl<_$_CreateExchangeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateExchangeRequestToJson(
      this,
    );
  }
}

abstract class _CreateExchangeRequest implements CreateExchangeRequest {
  const factory _CreateExchangeRequest(
      {required final String sourceId,
      required final String nonce,
      required final String payload}) = _$_CreateExchangeRequest;

  factory _CreateExchangeRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateExchangeRequest.fromJson;

  @override
  String get sourceId;
  @override
  String get nonce;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$_CreateExchangeRequestCopyWith<_$_CreateExchangeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
