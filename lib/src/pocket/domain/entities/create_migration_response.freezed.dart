// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_migration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMigrationResponse _$CreateMigrationResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateMigrationResponse.fromJson(json);
}

/// @nodoc
class _$CreateMigrationResponseTearOff {
  const _$CreateMigrationResponseTearOff();

  _CreateMigrationResponse call(
      {required String registryUrl,
      required String code,
      required String link,
      required DateTime deadline}) {
    return _CreateMigrationResponse(
      registryUrl: registryUrl,
      code: code,
      link: link,
      deadline: deadline,
    );
  }

  CreateMigrationResponse fromJson(Map<String, Object> json) {
    return CreateMigrationResponse.fromJson(json);
  }
}

/// @nodoc
const $CreateMigrationResponse = _$CreateMigrationResponseTearOff();

/// @nodoc
mixin _$CreateMigrationResponse {
  String get registryUrl => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMigrationResponseCopyWith<CreateMigrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMigrationResponseCopyWith<$Res> {
  factory $CreateMigrationResponseCopyWith(CreateMigrationResponse value,
          $Res Function(CreateMigrationResponse) then) =
      _$CreateMigrationResponseCopyWithImpl<$Res>;
  $Res call({String registryUrl, String code, String link, DateTime deadline});
}

/// @nodoc
class _$CreateMigrationResponseCopyWithImpl<$Res>
    implements $CreateMigrationResponseCopyWith<$Res> {
  _$CreateMigrationResponseCopyWithImpl(this._value, this._then);

  final CreateMigrationResponse _value;
  // ignore: unused_field
  final $Res Function(CreateMigrationResponse) _then;

  @override
  $Res call({
    Object? registryUrl = freezed,
    Object? code = freezed,
    Object? link = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      registryUrl: registryUrl == freezed
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CreateMigrationResponseCopyWith<$Res>
    implements $CreateMigrationResponseCopyWith<$Res> {
  factory _$CreateMigrationResponseCopyWith(_CreateMigrationResponse value,
          $Res Function(_CreateMigrationResponse) then) =
      __$CreateMigrationResponseCopyWithImpl<$Res>;
  @override
  $Res call({String registryUrl, String code, String link, DateTime deadline});
}

/// @nodoc
class __$CreateMigrationResponseCopyWithImpl<$Res>
    extends _$CreateMigrationResponseCopyWithImpl<$Res>
    implements _$CreateMigrationResponseCopyWith<$Res> {
  __$CreateMigrationResponseCopyWithImpl(_CreateMigrationResponse _value,
      $Res Function(_CreateMigrationResponse) _then)
      : super(_value, (v) => _then(v as _CreateMigrationResponse));

  @override
  _CreateMigrationResponse get _value =>
      super._value as _CreateMigrationResponse;

  @override
  $Res call({
    Object? registryUrl = freezed,
    Object? code = freezed,
    Object? link = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_CreateMigrationResponse(
      registryUrl: registryUrl == freezed
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateMigrationResponse implements _CreateMigrationResponse {
  const _$_CreateMigrationResponse(
      {required this.registryUrl,
      required this.code,
      required this.link,
      required this.deadline});

  factory _$_CreateMigrationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateMigrationResponseFromJson(json);

  @override
  final String registryUrl;
  @override
  final String code;
  @override
  final String link;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'CreateMigrationResponse(registryUrl: $registryUrl, code: $code, link: $link, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateMigrationResponse &&
            (identical(other.registryUrl, registryUrl) ||
                const DeepCollectionEquality()
                    .equals(other.registryUrl, registryUrl)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.deadline, deadline) ||
                const DeepCollectionEquality()
                    .equals(other.deadline, deadline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(registryUrl) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(deadline);

  @JsonKey(ignore: true)
  @override
  _$CreateMigrationResponseCopyWith<_CreateMigrationResponse> get copyWith =>
      __$CreateMigrationResponseCopyWithImpl<_CreateMigrationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateMigrationResponseToJson(this);
  }
}

abstract class _CreateMigrationResponse implements CreateMigrationResponse {
  const factory _CreateMigrationResponse(
      {required String registryUrl,
      required String code,
      required String link,
      required DateTime deadline}) = _$_CreateMigrationResponse;

  factory _CreateMigrationResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateMigrationResponse.fromJson;

  @override
  String get registryUrl => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  DateTime get deadline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateMigrationResponseCopyWith<_CreateMigrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
