// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeResponse _$ExchangeResponseFromJson(Map<String, dynamic> json) {
  return _ExchangeResponse.fromJson(json);
}

/// @nodoc
mixin _$ExchangeResponse {
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeResponseCopyWith<ExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeResponseCopyWith<$Res> {
  factory $ExchangeResponseCopyWith(
          ExchangeResponse value, $Res Function(ExchangeResponse) then) =
      _$ExchangeResponseCopyWithImpl<$Res, ExchangeResponse>;
  @useResult
  $Res call({String payload});
}

/// @nodoc
class _$ExchangeResponseCopyWithImpl<$Res, $Val extends ExchangeResponse>
    implements $ExchangeResponseCopyWith<$Res> {
  _$ExchangeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeResponseCopyWith<$Res>
    implements $ExchangeResponseCopyWith<$Res> {
  factory _$$_ExchangeResponseCopyWith(
          _$_ExchangeResponse value, $Res Function(_$_ExchangeResponse) then) =
      __$$_ExchangeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payload});
}

/// @nodoc
class __$$_ExchangeResponseCopyWithImpl<$Res>
    extends _$ExchangeResponseCopyWithImpl<$Res, _$_ExchangeResponse>
    implements _$$_ExchangeResponseCopyWith<$Res> {
  __$$_ExchangeResponseCopyWithImpl(
      _$_ExchangeResponse _value, $Res Function(_$_ExchangeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_ExchangeResponse(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeResponse implements _ExchangeResponse {
  const _$_ExchangeResponse({required this.payload});

  factory _$_ExchangeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeResponseFromJson(json);

  @override
  final String payload;

  @override
  String toString() {
    return 'ExchangeResponse(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeResponse &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeResponseCopyWith<_$_ExchangeResponse> get copyWith =>
      __$$_ExchangeResponseCopyWithImpl<_$_ExchangeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeResponseToJson(
      this,
    );
  }
}

abstract class _ExchangeResponse implements ExchangeResponse {
  const factory _ExchangeResponse({required final String payload}) =
      _$_ExchangeResponse;

  factory _ExchangeResponse.fromJson(Map<String, dynamic> json) =
      _$_ExchangeResponse.fromJson;

  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeResponseCopyWith<_$_ExchangeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
