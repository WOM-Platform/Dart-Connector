// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wom_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WomCreationResponseTearOff {
  const _$WomCreationResponseTearOff();

  _WomCreationResponse call(
      {required String registryUrl,
      required String nonce,
      required String otc,
      required String password,
      required String link,
      required int count}) {
    return _WomCreationResponse(
      registryUrl: registryUrl,
      nonce: nonce,
      otc: otc,
      password: password,
      link: link,
      count: count,
    );
  }
}

/// @nodoc
const $WomCreationResponse = _$WomCreationResponseTearOff();

/// @nodoc
mixin _$WomCreationResponse {
  String get registryUrl => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get otc => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WomCreationResponseCopyWith<WomCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WomCreationResponseCopyWith<$Res> {
  factory $WomCreationResponseCopyWith(
          WomCreationResponse value, $Res Function(WomCreationResponse) then) =
      _$WomCreationResponseCopyWithImpl<$Res>;
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link,
      int count});
}

/// @nodoc
class _$WomCreationResponseCopyWithImpl<$Res>
    implements $WomCreationResponseCopyWith<$Res> {
  _$WomCreationResponseCopyWithImpl(this._value, this._then);

  final WomCreationResponse _value;
  // ignore: unused_field
  final $Res Function(WomCreationResponse) _then;

  @override
  $Res call({
    Object? registryUrl = freezed,
    Object? nonce = freezed,
    Object? otc = freezed,
    Object? password = freezed,
    Object? link = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      registryUrl: registryUrl == freezed
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      otc: otc == freezed
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WomCreationResponseCopyWith<$Res>
    implements $WomCreationResponseCopyWith<$Res> {
  factory _$WomCreationResponseCopyWith(_WomCreationResponse value,
          $Res Function(_WomCreationResponse) then) =
      __$WomCreationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String registryUrl,
      String nonce,
      String otc,
      String password,
      String link,
      int count});
}

/// @nodoc
class __$WomCreationResponseCopyWithImpl<$Res>
    extends _$WomCreationResponseCopyWithImpl<$Res>
    implements _$WomCreationResponseCopyWith<$Res> {
  __$WomCreationResponseCopyWithImpl(
      _WomCreationResponse _value, $Res Function(_WomCreationResponse) _then)
      : super(_value, (v) => _then(v as _WomCreationResponse));

  @override
  _WomCreationResponse get _value => super._value as _WomCreationResponse;

  @override
  $Res call({
    Object? registryUrl = freezed,
    Object? nonce = freezed,
    Object? otc = freezed,
    Object? password = freezed,
    Object? link = freezed,
    Object? count = freezed,
  }) {
    return _then(_WomCreationResponse(
      registryUrl: registryUrl == freezed
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      otc: otc == freezed
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WomCreationResponse implements _WomCreationResponse {
  const _$_WomCreationResponse(
      {required this.registryUrl,
      required this.nonce,
      required this.otc,
      required this.password,
      required this.link,
      required this.count});

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
    return 'WomCreationResponse(registryUrl: $registryUrl, nonce: $nonce, otc: $otc, password: $password, link: $link, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WomCreationResponse &&
            (identical(other.registryUrl, registryUrl) ||
                const DeepCollectionEquality()
                    .equals(other.registryUrl, registryUrl)) &&
            (identical(other.nonce, nonce) ||
                const DeepCollectionEquality().equals(other.nonce, nonce)) &&
            (identical(other.otc, otc) ||
                const DeepCollectionEquality().equals(other.otc, otc)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(registryUrl) ^
      const DeepCollectionEquality().hash(nonce) ^
      const DeepCollectionEquality().hash(otc) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$WomCreationResponseCopyWith<_WomCreationResponse> get copyWith =>
      __$WomCreationResponseCopyWithImpl<_WomCreationResponse>(
          this, _$identity);
}

abstract class _WomCreationResponse implements WomCreationResponse {
  const factory _WomCreationResponse(
      {required String registryUrl,
      required String nonce,
      required String otc,
      required String password,
      required String link,
      required int count}) = _$_WomCreationResponse;

  @override
  String get registryUrl => throw _privateConstructorUsedError;
  @override
  String get nonce => throw _privateConstructorUsedError;
  @override
  String get otc => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WomCreationResponseCopyWith<_WomCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
