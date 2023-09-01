// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anonymous_pos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnonymousPos _$AnonymousPosFromJson(Map<String, dynamic> json) {
  return _AnonymousPos.fromJson(json);
}

/// @nodoc
mixin _$AnonymousPos {
  String get posId => throw _privateConstructorUsedError;
  String get posPrivateKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnonymousPosCopyWith<AnonymousPos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnonymousPosCopyWith<$Res> {
  factory $AnonymousPosCopyWith(
          AnonymousPos value, $Res Function(AnonymousPos) then) =
      _$AnonymousPosCopyWithImpl<$Res, AnonymousPos>;
  @useResult
  $Res call({String posId, String posPrivateKey});
}

/// @nodoc
class _$AnonymousPosCopyWithImpl<$Res, $Val extends AnonymousPos>
    implements $AnonymousPosCopyWith<$Res> {
  _$AnonymousPosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? posPrivateKey = null,
  }) {
    return _then(_value.copyWith(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      posPrivateKey: null == posPrivateKey
          ? _value.posPrivateKey
          : posPrivateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnonymousPosCopyWith<$Res>
    implements $AnonymousPosCopyWith<$Res> {
  factory _$$_AnonymousPosCopyWith(
          _$_AnonymousPos value, $Res Function(_$_AnonymousPos) then) =
      __$$_AnonymousPosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String posId, String posPrivateKey});
}

/// @nodoc
class __$$_AnonymousPosCopyWithImpl<$Res>
    extends _$AnonymousPosCopyWithImpl<$Res, _$_AnonymousPos>
    implements _$$_AnonymousPosCopyWith<$Res> {
  __$$_AnonymousPosCopyWithImpl(
      _$_AnonymousPos _value, $Res Function(_$_AnonymousPos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? posPrivateKey = null,
  }) {
    return _then(_$_AnonymousPos(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      posPrivateKey: null == posPrivateKey
          ? _value.posPrivateKey
          : posPrivateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnonymousPos implements _AnonymousPos {
  const _$_AnonymousPos({required this.posId, required this.posPrivateKey});

  factory _$_AnonymousPos.fromJson(Map<String, dynamic> json) =>
      _$$_AnonymousPosFromJson(json);

  @override
  final String posId;
  @override
  final String posPrivateKey;

  @override
  String toString() {
    return 'AnonymousPos(posId: $posId, posPrivateKey: $posPrivateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnonymousPos &&
            (identical(other.posId, posId) || other.posId == posId) &&
            (identical(other.posPrivateKey, posPrivateKey) ||
                other.posPrivateKey == posPrivateKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posId, posPrivateKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnonymousPosCopyWith<_$_AnonymousPos> get copyWith =>
      __$$_AnonymousPosCopyWithImpl<_$_AnonymousPos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnonymousPosToJson(
      this,
    );
  }
}

abstract class _AnonymousPos implements AnonymousPos {
  const factory _AnonymousPos(
      {required final String posId,
      required final String posPrivateKey}) = _$_AnonymousPos;

  factory _AnonymousPos.fromJson(Map<String, dynamic> json) =
      _$_AnonymousPos.fromJson;

  @override
  String get posId;
  @override
  String get posPrivateKey;
  @override
  @JsonKey(ignore: true)
  _$$_AnonymousPosCopyWith<_$_AnonymousPos> get copyWith =>
      throw _privateConstructorUsedError;
}
