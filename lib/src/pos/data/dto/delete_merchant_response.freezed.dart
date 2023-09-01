// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_merchant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteMerchantResponse _$DeleteMerchantResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteMerchantResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteMerchantResponse {
  bool get operationPerformed => throw _privateConstructorUsedError;
  int get countOfDeletedMerchants => throw _privateConstructorUsedError;
  int get countOfDeletedPos => throw _privateConstructorUsedError;
  int get countOfDeletedOffers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteMerchantResponseCopyWith<DeleteMerchantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMerchantResponseCopyWith<$Res> {
  factory $DeleteMerchantResponseCopyWith(DeleteMerchantResponse value,
          $Res Function(DeleteMerchantResponse) then) =
      _$DeleteMerchantResponseCopyWithImpl<$Res, DeleteMerchantResponse>;
  @useResult
  $Res call(
      {bool operationPerformed,
      int countOfDeletedMerchants,
      int countOfDeletedPos,
      int countOfDeletedOffers});
}

/// @nodoc
class _$DeleteMerchantResponseCopyWithImpl<$Res,
        $Val extends DeleteMerchantResponse>
    implements $DeleteMerchantResponseCopyWith<$Res> {
  _$DeleteMerchantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationPerformed = null,
    Object? countOfDeletedMerchants = null,
    Object? countOfDeletedPos = null,
    Object? countOfDeletedOffers = null,
  }) {
    return _then(_value.copyWith(
      operationPerformed: null == operationPerformed
          ? _value.operationPerformed
          : operationPerformed // ignore: cast_nullable_to_non_nullable
              as bool,
      countOfDeletedMerchants: null == countOfDeletedMerchants
          ? _value.countOfDeletedMerchants
          : countOfDeletedMerchants // ignore: cast_nullable_to_non_nullable
              as int,
      countOfDeletedPos: null == countOfDeletedPos
          ? _value.countOfDeletedPos
          : countOfDeletedPos // ignore: cast_nullable_to_non_nullable
              as int,
      countOfDeletedOffers: null == countOfDeletedOffers
          ? _value.countOfDeletedOffers
          : countOfDeletedOffers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteMerchantResponseCopyWith<$Res>
    implements $DeleteMerchantResponseCopyWith<$Res> {
  factory _$$_DeleteMerchantResponseCopyWith(_$_DeleteMerchantResponse value,
          $Res Function(_$_DeleteMerchantResponse) then) =
      __$$_DeleteMerchantResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool operationPerformed,
      int countOfDeletedMerchants,
      int countOfDeletedPos,
      int countOfDeletedOffers});
}

/// @nodoc
class __$$_DeleteMerchantResponseCopyWithImpl<$Res>
    extends _$DeleteMerchantResponseCopyWithImpl<$Res,
        _$_DeleteMerchantResponse>
    implements _$$_DeleteMerchantResponseCopyWith<$Res> {
  __$$_DeleteMerchantResponseCopyWithImpl(_$_DeleteMerchantResponse _value,
      $Res Function(_$_DeleteMerchantResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationPerformed = null,
    Object? countOfDeletedMerchants = null,
    Object? countOfDeletedPos = null,
    Object? countOfDeletedOffers = null,
  }) {
    return _then(_$_DeleteMerchantResponse(
      operationPerformed: null == operationPerformed
          ? _value.operationPerformed
          : operationPerformed // ignore: cast_nullable_to_non_nullable
              as bool,
      countOfDeletedMerchants: null == countOfDeletedMerchants
          ? _value.countOfDeletedMerchants
          : countOfDeletedMerchants // ignore: cast_nullable_to_non_nullable
              as int,
      countOfDeletedPos: null == countOfDeletedPos
          ? _value.countOfDeletedPos
          : countOfDeletedPos // ignore: cast_nullable_to_non_nullable
              as int,
      countOfDeletedOffers: null == countOfDeletedOffers
          ? _value.countOfDeletedOffers
          : countOfDeletedOffers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteMerchantResponse implements _DeleteMerchantResponse {
  const _$_DeleteMerchantResponse(
      {required this.operationPerformed,
      required this.countOfDeletedMerchants,
      required this.countOfDeletedPos,
      required this.countOfDeletedOffers});

  factory _$_DeleteMerchantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteMerchantResponseFromJson(json);

  @override
  final bool operationPerformed;
  @override
  final int countOfDeletedMerchants;
  @override
  final int countOfDeletedPos;
  @override
  final int countOfDeletedOffers;

  @override
  String toString() {
    return 'DeleteMerchantResponse(operationPerformed: $operationPerformed, countOfDeletedMerchants: $countOfDeletedMerchants, countOfDeletedPos: $countOfDeletedPos, countOfDeletedOffers: $countOfDeletedOffers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteMerchantResponse &&
            (identical(other.operationPerformed, operationPerformed) ||
                other.operationPerformed == operationPerformed) &&
            (identical(
                    other.countOfDeletedMerchants, countOfDeletedMerchants) ||
                other.countOfDeletedMerchants == countOfDeletedMerchants) &&
            (identical(other.countOfDeletedPos, countOfDeletedPos) ||
                other.countOfDeletedPos == countOfDeletedPos) &&
            (identical(other.countOfDeletedOffers, countOfDeletedOffers) ||
                other.countOfDeletedOffers == countOfDeletedOffers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, operationPerformed,
      countOfDeletedMerchants, countOfDeletedPos, countOfDeletedOffers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteMerchantResponseCopyWith<_$_DeleteMerchantResponse> get copyWith =>
      __$$_DeleteMerchantResponseCopyWithImpl<_$_DeleteMerchantResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteMerchantResponseToJson(
      this,
    );
  }
}

abstract class _DeleteMerchantResponse implements DeleteMerchantResponse {
  const factory _DeleteMerchantResponse(
      {required final bool operationPerformed,
      required final int countOfDeletedMerchants,
      required final int countOfDeletedPos,
      required final int countOfDeletedOffers}) = _$_DeleteMerchantResponse;

  factory _DeleteMerchantResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteMerchantResponse.fromJson;

  @override
  bool get operationPerformed;
  @override
  int get countOfDeletedMerchants;
  @override
  int get countOfDeletedPos;
  @override
  int get countOfDeletedOffers;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteMerchantResponseCopyWith<_$_DeleteMerchantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
