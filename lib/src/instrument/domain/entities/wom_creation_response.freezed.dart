// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wom_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_WomCreationResponseCopyWith<$Res>
    implements $WomCreationResponseCopyWith<$Res> {
  factory _$$_WomCreationResponseCopyWith(_$_WomCreationResponse value,
          $Res Function(_$_WomCreationResponse) then) =
      __$$_WomCreationResponseCopyWithImpl<$Res>;
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
class __$$_WomCreationResponseCopyWithImpl<$Res>
    extends _$WomCreationResponseCopyWithImpl<$Res>
    implements _$$_WomCreationResponseCopyWith<$Res> {
  __$$_WomCreationResponseCopyWithImpl(_$_WomCreationResponse _value,
      $Res Function(_$_WomCreationResponse) _then)
      : super(_value, (v) => _then(v as _$_WomCreationResponse));

  @override
  _$_WomCreationResponse get _value => super._value as _$_WomCreationResponse;

  @override
  $Res call({
    Object? registryUrl = freezed,
    Object? nonce = freezed,
    Object? otc = freezed,
    Object? password = freezed,
    Object? link = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_WomCreationResponse(
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
        (other.runtimeType == runtimeType &&
            other is _$_WomCreationResponse &&
            const DeepCollectionEquality()
                .equals(other.registryUrl, registryUrl) &&
            const DeepCollectionEquality().equals(other.nonce, nonce) &&
            const DeepCollectionEquality().equals(other.otc, otc) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(registryUrl),
      const DeepCollectionEquality().hash(nonce),
      const DeepCollectionEquality().hash(otc),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_WomCreationResponseCopyWith<_$_WomCreationResponse> get copyWith =>
      __$$_WomCreationResponseCopyWithImpl<_$_WomCreationResponse>(
          this, _$identity);
}

abstract class _WomCreationResponse implements WomCreationResponse {
  const factory _WomCreationResponse(
      {required final String registryUrl,
      required final String nonce,
      required final String otc,
      required final String password,
      required final String link,
      required final int count}) = _$_WomCreationResponse;

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
  _$$_WomCreationResponseCopyWith<_$_WomCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
