// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_migration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMigrationResponse _$CreateMigrationResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateMigrationResponse.fromJson(json);
}

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
      _$CreateMigrationResponseCopyWithImpl<$Res, CreateMigrationResponse>;
  @useResult
  $Res call({String registryUrl, String code, String link, DateTime deadline});
}

/// @nodoc
class _$CreateMigrationResponseCopyWithImpl<$Res,
        $Val extends CreateMigrationResponse>
    implements $CreateMigrationResponseCopyWith<$Res> {
  _$CreateMigrationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? code = null,
    Object? link = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateMigrationResponseCopyWith<$Res>
    implements $CreateMigrationResponseCopyWith<$Res> {
  factory _$$_CreateMigrationResponseCopyWith(_$_CreateMigrationResponse value,
          $Res Function(_$_CreateMigrationResponse) then) =
      __$$_CreateMigrationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String registryUrl, String code, String link, DateTime deadline});
}

/// @nodoc
class __$$_CreateMigrationResponseCopyWithImpl<$Res>
    extends _$CreateMigrationResponseCopyWithImpl<$Res,
        _$_CreateMigrationResponse>
    implements _$$_CreateMigrationResponseCopyWith<$Res> {
  __$$_CreateMigrationResponseCopyWithImpl(_$_CreateMigrationResponse _value,
      $Res Function(_$_CreateMigrationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? code = null,
    Object? link = null,
    Object? deadline = null,
  }) {
    return _then(_$_CreateMigrationResponse(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: null == deadline
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
      _$$_CreateMigrationResponseFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _$_CreateMigrationResponse &&
            (identical(other.registryUrl, registryUrl) ||
                other.registryUrl == registryUrl) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, registryUrl, code, link, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateMigrationResponseCopyWith<_$_CreateMigrationResponse>
      get copyWith =>
          __$$_CreateMigrationResponseCopyWithImpl<_$_CreateMigrationResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateMigrationResponseToJson(
      this,
    );
  }
}

abstract class _CreateMigrationResponse implements CreateMigrationResponse {
  const factory _CreateMigrationResponse(
      {required final String registryUrl,
      required final String code,
      required final String link,
      required final DateTime deadline}) = _$_CreateMigrationResponse;

  factory _CreateMigrationResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateMigrationResponse.fromJson;

  @override
  String get registryUrl;
  @override
  String get code;
  @override
  String get link;
  @override
  DateTime get deadline;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMigrationResponseCopyWith<_$_CreateMigrationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
