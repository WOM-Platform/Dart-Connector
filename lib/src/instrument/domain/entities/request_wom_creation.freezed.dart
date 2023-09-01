// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_wom_creation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestWomCreation _$RequestWomCreationFromJson(Map<String, dynamic> json) {
  return _RequestWomCreation.fromJson(json);
}

/// @nodoc
mixin _$RequestWomCreation {
  String get sourceId => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  List<VoucherRequest> get vouchers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestWomCreationCopyWith<RequestWomCreation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestWomCreationCopyWith<$Res> {
  factory $RequestWomCreationCopyWith(
          RequestWomCreation value, $Res Function(RequestWomCreation) then) =
      _$RequestWomCreationCopyWithImpl<$Res, RequestWomCreation>;
  @useResult
  $Res call({String sourceId, String nonce, List<VoucherRequest> vouchers});
}

/// @nodoc
class _$RequestWomCreationCopyWithImpl<$Res, $Val extends RequestWomCreation>
    implements $RequestWomCreationCopyWith<$Res> {
  _$RequestWomCreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? nonce = null,
    Object? vouchers = null,
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
      vouchers: null == vouchers
          ? _value.vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<VoucherRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestWomCreationCopyWith<$Res>
    implements $RequestWomCreationCopyWith<$Res> {
  factory _$$_RequestWomCreationCopyWith(_$_RequestWomCreation value,
          $Res Function(_$_RequestWomCreation) then) =
      __$$_RequestWomCreationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sourceId, String nonce, List<VoucherRequest> vouchers});
}

/// @nodoc
class __$$_RequestWomCreationCopyWithImpl<$Res>
    extends _$RequestWomCreationCopyWithImpl<$Res, _$_RequestWomCreation>
    implements _$$_RequestWomCreationCopyWith<$Res> {
  __$$_RequestWomCreationCopyWithImpl(
      _$_RequestWomCreation _value, $Res Function(_$_RequestWomCreation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? nonce = null,
    Object? vouchers = null,
  }) {
    return _then(_$_RequestWomCreation(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      vouchers: null == vouchers
          ? _value._vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<VoucherRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestWomCreation implements _RequestWomCreation {
  const _$_RequestWomCreation(
      {required this.sourceId,
      required this.nonce,
      required final List<VoucherRequest> vouchers})
      : _vouchers = vouchers;

  factory _$_RequestWomCreation.fromJson(Map<String, dynamic> json) =>
      _$$_RequestWomCreationFromJson(json);

  @override
  final String sourceId;
  @override
  final String nonce;
  final List<VoucherRequest> _vouchers;
  @override
  List<VoucherRequest> get vouchers {
    if (_vouchers is EqualUnmodifiableListView) return _vouchers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vouchers);
  }

  @override
  String toString() {
    return 'RequestWomCreation(sourceId: $sourceId, nonce: $nonce, vouchers: $vouchers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestWomCreation &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            const DeepCollectionEquality().equals(other._vouchers, _vouchers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sourceId, nonce,
      const DeepCollectionEquality().hash(_vouchers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestWomCreationCopyWith<_$_RequestWomCreation> get copyWith =>
      __$$_RequestWomCreationCopyWithImpl<_$_RequestWomCreation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestWomCreationToJson(
      this,
    );
  }
}

abstract class _RequestWomCreation implements RequestWomCreation {
  const factory _RequestWomCreation(
      {required final String sourceId,
      required final String nonce,
      required final List<VoucherRequest> vouchers}) = _$_RequestWomCreation;

  factory _RequestWomCreation.fromJson(Map<String, dynamic> json) =
      _$_RequestWomCreation.fromJson;

  @override
  String get sourceId;
  @override
  String get nonce;
  @override
  List<VoucherRequest> get vouchers;
  @override
  @JsonKey(ignore: true)
  _$$_RequestWomCreationCopyWith<_$_RequestWomCreation> get copyWith =>
      throw _privateConstructorUsedError;
}
