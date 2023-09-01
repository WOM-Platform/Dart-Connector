// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_offer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateOfferRequestDTO _$CreateOfferRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _CreateOfferRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$CreateOfferRequestDTO {
  String get title => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  SimpleFilter? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOfferRequestDTOCopyWith<CreateOfferRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOfferRequestDTOCopyWith<$Res> {
  factory $CreateOfferRequestDTOCopyWith(CreateOfferRequestDTO value,
          $Res Function(CreateOfferRequestDTO) then) =
      _$CreateOfferRequestDTOCopyWithImpl<$Res, CreateOfferRequestDTO>;
  @useResult
  $Res call(
      {String title, int cost, String? description, SimpleFilter? filter});

  $SimpleFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class _$CreateOfferRequestDTOCopyWithImpl<$Res,
        $Val extends CreateOfferRequestDTO>
    implements $CreateOfferRequestDTOCopyWith<$Res> {
  _$CreateOfferRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? cost = null,
    Object? description = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleFilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $SimpleFilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateOfferRequestDTOCopyWith<$Res>
    implements $CreateOfferRequestDTOCopyWith<$Res> {
  factory _$$_CreateOfferRequestDTOCopyWith(_$_CreateOfferRequestDTO value,
          $Res Function(_$_CreateOfferRequestDTO) then) =
      __$$_CreateOfferRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, int cost, String? description, SimpleFilter? filter});

  @override
  $SimpleFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$_CreateOfferRequestDTOCopyWithImpl<$Res>
    extends _$CreateOfferRequestDTOCopyWithImpl<$Res, _$_CreateOfferRequestDTO>
    implements _$$_CreateOfferRequestDTOCopyWith<$Res> {
  __$$_CreateOfferRequestDTOCopyWithImpl(_$_CreateOfferRequestDTO _value,
      $Res Function(_$_CreateOfferRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? cost = null,
    Object? description = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_CreateOfferRequestDTO(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateOfferRequestDTO implements _CreateOfferRequestDTO {
  const _$_CreateOfferRequestDTO(
      {required this.title, required this.cost, this.description, this.filter});

  factory _$_CreateOfferRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreateOfferRequestDTOFromJson(json);

  @override
  final String title;
  @override
  final int cost;
  @override
  final String? description;
  @override
  final SimpleFilter? filter;

  @override
  String toString() {
    return 'CreateOfferRequestDTO(title: $title, cost: $cost, description: $description, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOfferRequestDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, cost, description, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOfferRequestDTOCopyWith<_$_CreateOfferRequestDTO> get copyWith =>
      __$$_CreateOfferRequestDTOCopyWithImpl<_$_CreateOfferRequestDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateOfferRequestDTOToJson(
      this,
    );
  }
}

abstract class _CreateOfferRequestDTO implements CreateOfferRequestDTO {
  const factory _CreateOfferRequestDTO(
      {required final String title,
      required final int cost,
      final String? description,
      final SimpleFilter? filter}) = _$_CreateOfferRequestDTO;

  factory _CreateOfferRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_CreateOfferRequestDTO.fromJson;

  @override
  String get title;
  @override
  int get cost;
  @override
  String? get description;
  @override
  SimpleFilter? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_CreateOfferRequestDTOCopyWith<_$_CreateOfferRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
