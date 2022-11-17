// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'migration_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MigrationInfoResponse _$MigrationInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _MigrationInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$MigrationInfoResponse {
  int get accessCount => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MigrationInfoResponseCopyWith<MigrationInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MigrationInfoResponseCopyWith<$Res> {
  factory $MigrationInfoResponseCopyWith(MigrationInfoResponse value,
          $Res Function(MigrationInfoResponse) then) =
      _$MigrationInfoResponseCopyWithImpl<$Res, MigrationInfoResponse>;
  @useResult
  $Res call({int accessCount, DateTime deadline});
}

/// @nodoc
class _$MigrationInfoResponseCopyWithImpl<$Res,
        $Val extends MigrationInfoResponse>
    implements $MigrationInfoResponseCopyWith<$Res> {
  _$MigrationInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCount = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MigrationInfoResponseCopyWith<$Res>
    implements $MigrationInfoResponseCopyWith<$Res> {
  factory _$$_MigrationInfoResponseCopyWith(_$_MigrationInfoResponse value,
          $Res Function(_$_MigrationInfoResponse) then) =
      __$$_MigrationInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accessCount, DateTime deadline});
}

/// @nodoc
class __$$_MigrationInfoResponseCopyWithImpl<$Res>
    extends _$MigrationInfoResponseCopyWithImpl<$Res, _$_MigrationInfoResponse>
    implements _$$_MigrationInfoResponseCopyWith<$Res> {
  __$$_MigrationInfoResponseCopyWithImpl(_$_MigrationInfoResponse _value,
      $Res Function(_$_MigrationInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessCount = null,
    Object? deadline = null,
  }) {
    return _then(_$_MigrationInfoResponse(
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MigrationInfoResponse implements _MigrationInfoResponse {
  const _$_MigrationInfoResponse(
      {required this.accessCount, required this.deadline});

  factory _$_MigrationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MigrationInfoResponseFromJson(json);

  @override
  final int accessCount;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'MigrationInfoResponse(accessCount: $accessCount, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MigrationInfoResponse &&
            (identical(other.accessCount, accessCount) ||
                other.accessCount == accessCount) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessCount, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MigrationInfoResponseCopyWith<_$_MigrationInfoResponse> get copyWith =>
      __$$_MigrationInfoResponseCopyWithImpl<_$_MigrationInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MigrationInfoResponseToJson(
      this,
    );
  }
}

abstract class _MigrationInfoResponse implements MigrationInfoResponse {
  const factory _MigrationInfoResponse(
      {required final int accessCount,
      required final DateTime deadline}) = _$_MigrationInfoResponse;

  factory _MigrationInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_MigrationInfoResponse.fromJson;

  @override
  int get accessCount;
  @override
  DateTime get deadline;
  @override
  @JsonKey(ignore: true)
  _$$_MigrationInfoResponseCopyWith<_$_MigrationInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
