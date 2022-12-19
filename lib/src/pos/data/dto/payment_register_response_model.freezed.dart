// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentRegisterResponse _$PaymentRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentRegisterResponse {
  String get registryUrl => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get otc => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRegisterResponseCopyWith<PaymentRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRegisterResponseCopyWith<$Res> {
  factory $PaymentRegisterResponseCopyWith(PaymentRegisterResponse value,
          $Res Function(PaymentRegisterResponse) then) =
      _$PaymentRegisterResponseCopyWithImpl<$Res, PaymentRegisterResponse>;
  @useResult
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link});
}

/// @nodoc
class _$PaymentRegisterResponseCopyWithImpl<$Res,
        $Val extends PaymentRegisterResponse>
    implements $PaymentRegisterResponseCopyWith<$Res> {
  _$PaymentRegisterResponseCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentRegisterResponseCopyWith<$Res>
    implements $PaymentRegisterResponseCopyWith<$Res> {
  factory _$$_PaymentRegisterResponseCopyWith(_$_PaymentRegisterResponse value,
          $Res Function(_$_PaymentRegisterResponse) then) =
      __$$_PaymentRegisterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link});
}

/// @nodoc
class __$$_PaymentRegisterResponseCopyWithImpl<$Res>
    extends _$PaymentRegisterResponseCopyWithImpl<$Res,
        _$_PaymentRegisterResponse>
    implements _$$_PaymentRegisterResponseCopyWith<$Res> {
  __$$_PaymentRegisterResponseCopyWithImpl(_$_PaymentRegisterResponse _value,
      $Res Function(_$_PaymentRegisterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? nonce = null,
    Object? otc = null,
    Object? password = null,
    Object? link = null,
  }) {
    return _then(_$_PaymentRegisterResponse(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentRegisterResponse implements _PaymentRegisterResponse {
  const _$_PaymentRegisterResponse(
      {required this.registryUrl,
      required this.nonce,
      required this.otc,
      required this.password,
      required this.link});

  factory _$_PaymentRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentRegisterResponseFromJson(json);

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
  String toString() {
    return 'PaymentRegisterResponse(registryUrl: $registryUrl, nonce: $nonce, otc: $otc, password: $password, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentRegisterResponse &&
            (identical(other.registryUrl, registryUrl) ||
                other.registryUrl == registryUrl) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.otc, otc) || other.otc == otc) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, registryUrl, nonce, otc, password, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentRegisterResponseCopyWith<_$_PaymentRegisterResponse>
      get copyWith =>
          __$$_PaymentRegisterResponseCopyWithImpl<_$_PaymentRegisterResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentRegisterResponseToJson(
      this,
    );
  }
}

abstract class _PaymentRegisterResponse implements PaymentRegisterResponse {
  const factory _PaymentRegisterResponse(
      {required final String registryUrl,
      required final String nonce,
      required final String otc,
      required final String password,
      required final String link}) = _$_PaymentRegisterResponse;

  factory _PaymentRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentRegisterResponse.fromJson;

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
  @JsonKey(ignore: true)
  _$$_PaymentRegisterResponseCopyWith<_$_PaymentRegisterResponse>
      get copyWith => throw _privateConstructorUsedError;
}
