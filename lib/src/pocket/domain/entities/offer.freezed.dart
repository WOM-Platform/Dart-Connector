// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferPagination _$OfferPaginationFromJson(Map<String, dynamic> json) {
  return _OfferPagination.fromJson(json);
}

/// @nodoc
mixin _$OfferPagination {
  List<OfferPOS> get data => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasPrevious => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPaginationCopyWith<OfferPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPaginationCopyWith<$Res> {
  factory $OfferPaginationCopyWith(
          OfferPagination value, $Res Function(OfferPagination) then) =
      _$OfferPaginationCopyWithImpl<$Res, OfferPagination>;
  @useResult
  $Res call(
      {List<OfferPOS> data,
      int totalCount,
      int page,
      int pageSize,
      bool hasPrevious,
      bool hasNext});
}

/// @nodoc
class _$OfferPaginationCopyWithImpl<$Res, $Val extends OfferPagination>
    implements $OfferPaginationCopyWith<$Res> {
  _$OfferPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? totalCount = null,
    Object? page = null,
    Object? pageSize = null,
    Object? hasPrevious = null,
    Object? hasNext = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferPOS>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferPaginationCopyWith<$Res>
    implements $OfferPaginationCopyWith<$Res> {
  factory _$$_OfferPaginationCopyWith(
          _$_OfferPagination value, $Res Function(_$_OfferPagination) then) =
      __$$_OfferPaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OfferPOS> data,
      int totalCount,
      int page,
      int pageSize,
      bool hasPrevious,
      bool hasNext});
}

/// @nodoc
class __$$_OfferPaginationCopyWithImpl<$Res>
    extends _$OfferPaginationCopyWithImpl<$Res, _$_OfferPagination>
    implements _$$_OfferPaginationCopyWith<$Res> {
  __$$_OfferPaginationCopyWithImpl(
      _$_OfferPagination _value, $Res Function(_$_OfferPagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? totalCount = null,
    Object? page = null,
    Object? pageSize = null,
    Object? hasPrevious = null,
    Object? hasNext = null,
  }) {
    return _then(_$_OfferPagination(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferPOS>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasPrevious: null == hasPrevious
          ? _value.hasPrevious
          : hasPrevious // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPagination implements _OfferPagination {
  const _$_OfferPagination(
      {required final List<OfferPOS> data,
      required this.totalCount,
      required this.page,
      required this.pageSize,
      required this.hasPrevious,
      required this.hasNext})
      : _data = data;

  factory _$_OfferPagination.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPaginationFromJson(json);

  final List<OfferPOS> _data;
  @override
  List<OfferPOS> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int totalCount;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final bool hasPrevious;
  @override
  final bool hasNext;

  @override
  String toString() {
    return 'OfferPagination(data: $data, totalCount: $totalCount, page: $page, pageSize: $pageSize, hasPrevious: $hasPrevious, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPagination &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      totalCount,
      page,
      pageSize,
      hasPrevious,
      hasNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPaginationCopyWith<_$_OfferPagination> get copyWith =>
      __$$_OfferPaginationCopyWithImpl<_$_OfferPagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPaginationToJson(
      this,
    );
  }
}

abstract class _OfferPagination implements OfferPagination {
  const factory _OfferPagination(
      {required final List<OfferPOS> data,
      required final int totalCount,
      required final int page,
      required final int pageSize,
      required final bool hasPrevious,
      required final bool hasNext}) = _$_OfferPagination;

  factory _OfferPagination.fromJson(Map<String, dynamic> json) =
      _$_OfferPagination.fromJson;

  @override
  List<OfferPOS> get data;
  @override
  int get totalCount;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool get hasPrevious;
  @override
  bool get hasNext;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPaginationCopyWith<_$_OfferPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferPOS _$OfferPOSFromJson(Map<String, dynamic> json) {
  return _OfferPOS.fromJson(json);
}

/// @nodoc
mixin _$OfferPOS {
  String get posId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  OfferPicture get cover => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  OfferPosition get position => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  List<Offer> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPOSCopyWith<OfferPOS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPOSCopyWith<$Res> {
  factory $OfferPOSCopyWith(OfferPOS value, $Res Function(OfferPOS) then) =
      _$OfferPOSCopyWithImpl<$Res, OfferPOS>;
  @useResult
  $Res call(
      {String posId,
      String name,
      String? description,
      OfferPicture cover,
      String? url,
      OfferPosition position,
      String? distance,
      List<Offer> offers});

  $OfferPictureCopyWith<$Res> get cover;
  $OfferPositionCopyWith<$Res> get position;
}

/// @nodoc
class _$OfferPOSCopyWithImpl<$Res, $Val extends OfferPOS>
    implements $OfferPOSCopyWith<$Res> {
  _$OfferPOSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? name = null,
    Object? description = freezed,
    Object? cover = null,
    Object? url = freezed,
    Object? position = null,
    Object? distance = freezed,
    Object? offers = null,
  }) {
    return _then(_value.copyWith(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as OfferPicture,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as OfferPosition,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferPictureCopyWith<$Res> get cover {
    return $OfferPictureCopyWith<$Res>(_value.cover, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferPositionCopyWith<$Res> get position {
    return $OfferPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OfferPOSCopyWith<$Res> implements $OfferPOSCopyWith<$Res> {
  factory _$$_OfferPOSCopyWith(
          _$_OfferPOS value, $Res Function(_$_OfferPOS) then) =
      __$$_OfferPOSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String posId,
      String name,
      String? description,
      OfferPicture cover,
      String? url,
      OfferPosition position,
      String? distance,
      List<Offer> offers});

  @override
  $OfferPictureCopyWith<$Res> get cover;
  @override
  $OfferPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$_OfferPOSCopyWithImpl<$Res>
    extends _$OfferPOSCopyWithImpl<$Res, _$_OfferPOS>
    implements _$$_OfferPOSCopyWith<$Res> {
  __$$_OfferPOSCopyWithImpl(
      _$_OfferPOS _value, $Res Function(_$_OfferPOS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posId = null,
    Object? name = null,
    Object? description = freezed,
    Object? cover = null,
    Object? url = freezed,
    Object? position = null,
    Object? distance = freezed,
    Object? offers = null,
  }) {
    return _then(_$_OfferPOS(
      posId: null == posId
          ? _value.posId
          : posId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as OfferPicture,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as OfferPosition,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPOS implements _OfferPOS {
  const _$_OfferPOS(
      {required this.posId,
      required this.name,
      this.description,
      required this.cover,
      this.url,
      required this.position,
      this.distance,
      required final List<Offer> offers})
      : _offers = offers;

  factory _$_OfferPOS.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPOSFromJson(json);

  @override
  final String posId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final OfferPicture cover;
  @override
  final String? url;
  @override
  final OfferPosition position;
  @override
  final String? distance;
  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'OfferPOS(posId: $posId, name: $name, description: $description, cover: $cover, url: $url, position: $position, distance: $distance, offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPOS &&
            (identical(other.posId, posId) || other.posId == posId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posId, name, description, cover,
      url, position, distance, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPOSCopyWith<_$_OfferPOS> get copyWith =>
      __$$_OfferPOSCopyWithImpl<_$_OfferPOS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPOSToJson(
      this,
    );
  }
}

abstract class _OfferPOS implements OfferPOS {
  const factory _OfferPOS(
      {required final String posId,
      required final String name,
      final String? description,
      required final OfferPicture cover,
      final String? url,
      required final OfferPosition position,
      final String? distance,
      required final List<Offer> offers}) = _$_OfferPOS;

  factory _OfferPOS.fromJson(Map<String, dynamic> json) = _$_OfferPOS.fromJson;

  @override
  String get posId;
  @override
  String get name;
  @override
  String? get description;
  @override
  OfferPicture get cover;
  @override
  String? get url;
  @override
  OfferPosition get position;
  @override
  String? get distance;
  @override
  List<Offer> get offers;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPOSCopyWith<_$_OfferPOS> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  String get offerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {String offerId,
      String title,
      String? description,
      int cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? title = null,
    Object? description = freezed,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String offerId,
      String title,
      String? description,
      int cost,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? title = null,
    Object? description = freezed,
    Object? cost = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Offer(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  const _$_Offer(
      {required this.offerId,
      required this.title,
      this.description,
      required this.cost,
      required this.createdAt,
      required this.updatedAt});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  final String offerId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final int cost;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Offer(offerId: $offerId, title: $title, description: $description, cost: $cost, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offerId, title, description, cost, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {required final String offerId,
      required final String title,
      final String? description,
      required final int cost,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  String get offerId;
  @override
  String get title;
  @override
  String? get description;
  @override
  int get cost;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferPicture _$OfferPictureFromJson(Map<String, dynamic> json) {
  return _OfferPicture.fromJson(json);
}

/// @nodoc
mixin _$OfferPicture {
  String get fullSizeUrl => throw _privateConstructorUsedError;
  String get midDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get highDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get squareThumbnailUrl => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPictureCopyWith<OfferPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPictureCopyWith<$Res> {
  factory $OfferPictureCopyWith(
          OfferPicture value, $Res Function(OfferPicture) then) =
      _$OfferPictureCopyWithImpl<$Res, OfferPicture>;
  @useResult
  $Res call(
      {String fullSizeUrl,
      String midDensityFullWidthUrl,
      String highDensityFullWidthUrl,
      String squareThumbnailUrl,
      String? blurhash});
}

/// @nodoc
class _$OfferPictureCopyWithImpl<$Res, $Val extends OfferPicture>
    implements $OfferPictureCopyWith<$Res> {
  _$OfferPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSizeUrl = null,
    Object? midDensityFullWidthUrl = null,
    Object? highDensityFullWidthUrl = null,
    Object? squareThumbnailUrl = null,
    Object? blurhash = freezed,
  }) {
    return _then(_value.copyWith(
      fullSizeUrl: null == fullSizeUrl
          ? _value.fullSizeUrl
          : fullSizeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      midDensityFullWidthUrl: null == midDensityFullWidthUrl
          ? _value.midDensityFullWidthUrl
          : midDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highDensityFullWidthUrl: null == highDensityFullWidthUrl
          ? _value.highDensityFullWidthUrl
          : highDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      squareThumbnailUrl: null == squareThumbnailUrl
          ? _value.squareThumbnailUrl
          : squareThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferPictureCopyWith<$Res>
    implements $OfferPictureCopyWith<$Res> {
  factory _$$_OfferPictureCopyWith(
          _$_OfferPicture value, $Res Function(_$_OfferPicture) then) =
      __$$_OfferPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullSizeUrl,
      String midDensityFullWidthUrl,
      String highDensityFullWidthUrl,
      String squareThumbnailUrl,
      String? blurhash});
}

/// @nodoc
class __$$_OfferPictureCopyWithImpl<$Res>
    extends _$OfferPictureCopyWithImpl<$Res, _$_OfferPicture>
    implements _$$_OfferPictureCopyWith<$Res> {
  __$$_OfferPictureCopyWithImpl(
      _$_OfferPicture _value, $Res Function(_$_OfferPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSizeUrl = null,
    Object? midDensityFullWidthUrl = null,
    Object? highDensityFullWidthUrl = null,
    Object? squareThumbnailUrl = null,
    Object? blurhash = freezed,
  }) {
    return _then(_$_OfferPicture(
      fullSizeUrl: null == fullSizeUrl
          ? _value.fullSizeUrl
          : fullSizeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      midDensityFullWidthUrl: null == midDensityFullWidthUrl
          ? _value.midDensityFullWidthUrl
          : midDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      highDensityFullWidthUrl: null == highDensityFullWidthUrl
          ? _value.highDensityFullWidthUrl
          : highDensityFullWidthUrl // ignore: cast_nullable_to_non_nullable
              as String,
      squareThumbnailUrl: null == squareThumbnailUrl
          ? _value.squareThumbnailUrl
          : squareThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPicture implements _OfferPicture {
  const _$_OfferPicture(
      {required this.fullSizeUrl,
      required this.midDensityFullWidthUrl,
      required this.highDensityFullWidthUrl,
      required this.squareThumbnailUrl,
      this.blurhash});

  factory _$_OfferPicture.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPictureFromJson(json);

  @override
  final String fullSizeUrl;
  @override
  final String midDensityFullWidthUrl;
  @override
  final String highDensityFullWidthUrl;
  @override
  final String squareThumbnailUrl;
  @override
  final String? blurhash;

  @override
  String toString() {
    return 'OfferPicture(fullSizeUrl: $fullSizeUrl, midDensityFullWidthUrl: $midDensityFullWidthUrl, highDensityFullWidthUrl: $highDensityFullWidthUrl, squareThumbnailUrl: $squareThumbnailUrl, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPicture &&
            (identical(other.fullSizeUrl, fullSizeUrl) ||
                other.fullSizeUrl == fullSizeUrl) &&
            (identical(other.midDensityFullWidthUrl, midDensityFullWidthUrl) ||
                other.midDensityFullWidthUrl == midDensityFullWidthUrl) &&
            (identical(
                    other.highDensityFullWidthUrl, highDensityFullWidthUrl) ||
                other.highDensityFullWidthUrl == highDensityFullWidthUrl) &&
            (identical(other.squareThumbnailUrl, squareThumbnailUrl) ||
                other.squareThumbnailUrl == squareThumbnailUrl) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullSizeUrl,
      midDensityFullWidthUrl,
      highDensityFullWidthUrl,
      squareThumbnailUrl,
      blurhash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPictureCopyWith<_$_OfferPicture> get copyWith =>
      __$$_OfferPictureCopyWithImpl<_$_OfferPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPictureToJson(
      this,
    );
  }
}

abstract class _OfferPicture implements OfferPicture {
  const factory _OfferPicture(
      {required final String fullSizeUrl,
      required final String midDensityFullWidthUrl,
      required final String highDensityFullWidthUrl,
      required final String squareThumbnailUrl,
      final String? blurhash}) = _$_OfferPicture;

  factory _OfferPicture.fromJson(Map<String, dynamic> json) =
      _$_OfferPicture.fromJson;

  @override
  String get fullSizeUrl;
  @override
  String get midDensityFullWidthUrl;
  @override
  String get highDensityFullWidthUrl;
  @override
  String get squareThumbnailUrl;
  @override
  String? get blurhash;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPictureCopyWith<_$_OfferPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferPosition _$OfferPositionFromJson(Map<String, dynamic> json) {
  return _OfferPosition.fromJson(json);
}

/// @nodoc
mixin _$OfferPosition {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferPositionCopyWith<OfferPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferPositionCopyWith<$Res> {
  factory $OfferPositionCopyWith(
          OfferPosition value, $Res Function(OfferPosition) then) =
      _$OfferPositionCopyWithImpl<$Res, OfferPosition>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$OfferPositionCopyWithImpl<$Res, $Val extends OfferPosition>
    implements $OfferPositionCopyWith<$Res> {
  _$OfferPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferPositionCopyWith<$Res>
    implements $OfferPositionCopyWith<$Res> {
  factory _$$_OfferPositionCopyWith(
          _$_OfferPosition value, $Res Function(_$_OfferPosition) then) =
      __$$_OfferPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_OfferPositionCopyWithImpl<$Res>
    extends _$OfferPositionCopyWithImpl<$Res, _$_OfferPosition>
    implements _$$_OfferPositionCopyWith<$Res> {
  __$$_OfferPositionCopyWithImpl(
      _$_OfferPosition _value, $Res Function(_$_OfferPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_OfferPosition(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPosition implements _OfferPosition {
  const _$_OfferPosition({required this.latitude, required this.longitude});

  factory _$_OfferPosition.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPositionFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'OfferPosition(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPosition &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferPositionCopyWith<_$_OfferPosition> get copyWith =>
      __$$_OfferPositionCopyWithImpl<_$_OfferPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferPositionToJson(
      this,
    );
  }
}

abstract class _OfferPosition implements OfferPosition {
  const factory _OfferPosition(
      {required final double latitude,
      required final double longitude}) = _$_OfferPosition;

  factory _OfferPosition.fromJson(Map<String, dynamic> json) =
      _$_OfferPosition.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPositionCopyWith<_$_OfferPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
