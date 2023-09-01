// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<VirtualPOS> get data => throw _privateConstructorUsedError;
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
      {List<VirtualPOS> data,
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
              as List<VirtualPOS>,
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
      {List<VirtualPOS> data,
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
              as List<VirtualPOS>,
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
      {required final List<VirtualPOS> data,
      required this.totalCount,
      required this.page,
      required this.pageSize,
      required this.hasPrevious,
      required this.hasNext})
      : _data = data;

  factory _$_OfferPagination.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPaginationFromJson(json);

  final List<VirtualPOS> _data;
  @override
  List<VirtualPOS> get data {
    if (_data is EqualUnmodifiableListView) return _data;
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
      {required final List<VirtualPOS> data,
      required final int totalCount,
      required final int page,
      required final int pageSize,
      required final bool hasPrevious,
      required final bool hasNext}) = _$_OfferPagination;

  factory _OfferPagination.fromJson(Map<String, dynamic> json) =
      _$_OfferPagination.fromJson;

  @override
  List<VirtualPOS> get data;
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

VirtualPOS _$VirtualPOSFromJson(Map<String, dynamic> json) {
  return _VirtualPOS.fromJson(json);
}

/// @nodoc
mixin _$VirtualPOS {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CoverPicture? get cover => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VirtualPOSCopyWith<VirtualPOS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualPOSCopyWith<$Res> {
  factory $VirtualPOSCopyWith(
          VirtualPOS value, $Res Function(VirtualPOS) then) =
      _$VirtualPOSCopyWithImpl<$Res, VirtualPOS>;
  @useResult
  $Res call(
      {String id,
      String name,
      CoverPicture? cover,
      String? description,
      String? url});

  $CoverPictureCopyWith<$Res>? get cover;
}

/// @nodoc
class _$VirtualPOSCopyWithImpl<$Res, $Val extends VirtualPOS>
    implements $VirtualPOSCopyWith<$Res> {
  _$VirtualPOSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cover = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CoverPicture?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverPictureCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $CoverPictureCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VirtualPOSCopyWith<$Res>
    implements $VirtualPOSCopyWith<$Res> {
  factory _$$_VirtualPOSCopyWith(
          _$_VirtualPOS value, $Res Function(_$_VirtualPOS) then) =
      __$$_VirtualPOSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      CoverPicture? cover,
      String? description,
      String? url});

  @override
  $CoverPictureCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$_VirtualPOSCopyWithImpl<$Res>
    extends _$VirtualPOSCopyWithImpl<$Res, _$_VirtualPOS>
    implements _$$_VirtualPOSCopyWith<$Res> {
  __$$_VirtualPOSCopyWithImpl(
      _$_VirtualPOS _value, $Res Function(_$_VirtualPOS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cover = freezed,
    Object? description = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_VirtualPOS(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CoverPicture?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VirtualPOS implements _VirtualPOS {
  const _$_VirtualPOS(
      {required this.id,
      required this.name,
      this.cover,
      this.description,
      this.url});

  factory _$_VirtualPOS.fromJson(Map<String, dynamic> json) =>
      _$$_VirtualPOSFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final CoverPicture? cover;
  @override
  final String? description;
  @override
  final String? url;

  @override
  String toString() {
    return 'VirtualPOS(id: $id, name: $name, cover: $cover, description: $description, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VirtualPOS &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, cover, description, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VirtualPOSCopyWith<_$_VirtualPOS> get copyWith =>
      __$$_VirtualPOSCopyWithImpl<_$_VirtualPOS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VirtualPOSToJson(
      this,
    );
  }
}

abstract class _VirtualPOS implements VirtualPOS {
  const factory _VirtualPOS(
      {required final String id,
      required final String name,
      final CoverPicture? cover,
      final String? description,
      final String? url}) = _$_VirtualPOS;

  factory _VirtualPOS.fromJson(Map<String, dynamic> json) =
      _$_VirtualPOS.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  CoverPicture? get cover;
  @override
  String? get description;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_VirtualPOSCopyWith<_$_VirtualPOS> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferPOS _$OfferPOSFromJson(Map<String, dynamic> json) {
  return _OfferPOS.fromJson(json);
}

/// @nodoc
mixin _$OfferPOS {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Offer> get offers => throw _privateConstructorUsedError;
  OfferPosition get position => throw _privateConstructorUsedError;
  CoverPicture? get cover => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      List<Offer> offers,
      OfferPosition position,
      CoverPicture? cover,
      String? description,
      String? url,
      String? distance});

  $OfferPositionCopyWith<$Res> get position;
  $CoverPictureCopyWith<$Res>? get cover;
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
    Object? id = null,
    Object? name = null,
    Object? offers = null,
    Object? position = null,
    Object? cover = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as OfferPosition,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CoverPicture?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferPositionCopyWith<$Res> get position {
    return $OfferPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverPictureCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $CoverPictureCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
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
      {String id,
      String name,
      List<Offer> offers,
      OfferPosition position,
      CoverPicture? cover,
      String? description,
      String? url,
      String? distance});

  @override
  $OfferPositionCopyWith<$Res> get position;
  @override
  $CoverPictureCopyWith<$Res>? get cover;
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
    Object? id = null,
    Object? name = null,
    Object? offers = null,
    Object? position = null,
    Object? cover = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$_OfferPOS(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as OfferPosition,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CoverPicture?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferPOS implements _OfferPOS {
  const _$_OfferPOS(
      {required this.id,
      required this.name,
      required final List<Offer> offers,
      required this.position,
      this.cover,
      this.description,
      this.url,
      this.distance})
      : _offers = offers;

  factory _$_OfferPOS.fromJson(Map<String, dynamic> json) =>
      _$$_OfferPOSFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final OfferPosition position;
  @override
  final CoverPicture? cover;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? distance;

  @override
  String toString() {
    return 'OfferPOS(id: $id, name: $name, offers: $offers, position: $position, cover: $cover, description: $description, url: $url, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferPOS &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_offers),
      position,
      cover,
      description,
      url,
      distance);

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
      {required final String id,
      required final String name,
      required final List<Offer> offers,
      required final OfferPosition position,
      final CoverPicture? cover,
      final String? description,
      final String? url,
      final String? distance}) = _$_OfferPOS;

  factory _OfferPOS.fromJson(Map<String, dynamic> json) = _$_OfferPOS.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Offer> get offers;
  @override
  OfferPosition get position;
  @override
  CoverPicture? get cover;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get distance;
  @override
  @JsonKey(ignore: true)
  _$$_OfferPOSCopyWith<_$_OfferPOS> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String get registryUrl => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get otc => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({String registryUrl, String link, String otc, String password});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? link = null,
    Object? otc = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      otc: null == otc
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String registryUrl, String link, String otc, String password});
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registryUrl = null,
    Object? link = null,
    Object? otc = null,
    Object? password = null,
  }) {
    return _then(_$_Payment(
      registryUrl: null == registryUrl
          ? _value.registryUrl
          : registryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      otc: null == otc
          ? _value.otc
          : otc // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  const _$_Payment(
      {required this.registryUrl,
      required this.link,
      required this.otc,
      required this.password});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFromJson(json);

  @override
  final String registryUrl;
  @override
  final String link;
  @override
  final String otc;
  @override
  final String password;

  @override
  String toString() {
    return 'Payment(registryUrl: $registryUrl, link: $link, otc: $otc, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.registryUrl, registryUrl) ||
                other.registryUrl == registryUrl) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.otc, otc) || other.otc == otc) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, registryUrl, link, otc, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final String registryUrl,
      required final String link,
      required final String otc,
      required final String password}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String get registryUrl;
  @override
  String get link;
  @override
  String get otc;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  DateTime get createdOn => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deactivated => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;
  SimpleFilter? get filter => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
      {String id,
      String title,
      int cost,
      DateTime createdOn,
      DateTime lastUpdate,
      bool deactivated,
      Payment payment,
      SimpleFilter? filter,
      String? description});

  $PaymentCopyWith<$Res> get payment;
  $SimpleFilterCopyWith<$Res>? get filter;
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
    Object? id = null,
    Object? title = null,
    Object? cost = null,
    Object? createdOn = null,
    Object? lastUpdate = null,
    Object? deactivated = null,
    Object? payment = null,
    Object? filter = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deactivated: null == deactivated
          ? _value.deactivated
          : deactivated // ignore: cast_nullable_to_non_nullable
              as bool,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
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
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int cost,
      DateTime createdOn,
      DateTime lastUpdate,
      bool deactivated,
      Payment payment,
      SimpleFilter? filter,
      String? description});

  @override
  $PaymentCopyWith<$Res> get payment;
  @override
  $SimpleFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cost = null,
    Object? createdOn = null,
    Object? lastUpdate = null,
    Object? deactivated = null,
    Object? payment = null,
    Object? filter = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Offer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deactivated: null == deactivated
          ? _value.deactivated
          : deactivated // ignore: cast_nullable_to_non_nullable
              as bool,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SimpleFilter?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  const _$_Offer(
      {required this.id,
      required this.title,
      required this.cost,
      required this.createdOn,
      required this.lastUpdate,
      this.deactivated = true,
      required this.payment,
      this.filter,
      this.description});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int cost;
  @override
  final DateTime createdOn;
  @override
  final DateTime lastUpdate;
  @override
  @JsonKey()
  final bool deactivated;
  @override
  final Payment payment;
  @override
  final SimpleFilter? filter;
  @override
  final String? description;

  @override
  String toString() {
    return 'Offer(id: $id, title: $title, cost: $cost, createdOn: $createdOn, lastUpdate: $lastUpdate, deactivated: $deactivated, payment: $payment, filter: $filter, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deactivated, deactivated) ||
                other.deactivated == deactivated) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, cost, createdOn,
      lastUpdate, deactivated, payment, filter, description);

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
      {required final String id,
      required final String title,
      required final int cost,
      required final DateTime createdOn,
      required final DateTime lastUpdate,
      final bool deactivated,
      required final Payment payment,
      final SimpleFilter? filter,
      final String? description}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get cost;
  @override
  DateTime get createdOn;
  @override
  DateTime get lastUpdate;
  @override
  bool get deactivated;
  @override
  Payment get payment;
  @override
  SimpleFilter? get filter;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}

CoverPicture _$CoverPictureFromJson(Map<String, dynamic> json) {
  return _CoverPicture.fromJson(json);
}

/// @nodoc
mixin _$CoverPicture {
  String get fullSizeUrl => throw _privateConstructorUsedError;
  String get midDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get highDensityFullWidthUrl => throw _privateConstructorUsedError;
  String get squareThumbnailUrl => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverPictureCopyWith<CoverPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverPictureCopyWith<$Res> {
  factory $CoverPictureCopyWith(
          CoverPicture value, $Res Function(CoverPicture) then) =
      _$CoverPictureCopyWithImpl<$Res, CoverPicture>;
  @useResult
  $Res call(
      {String fullSizeUrl,
      String midDensityFullWidthUrl,
      String highDensityFullWidthUrl,
      String squareThumbnailUrl,
      String? blurhash});
}

/// @nodoc
class _$CoverPictureCopyWithImpl<$Res, $Val extends CoverPicture>
    implements $CoverPictureCopyWith<$Res> {
  _$CoverPictureCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoverPictureCopyWith<$Res>
    implements $CoverPictureCopyWith<$Res> {
  factory _$$_CoverPictureCopyWith(
          _$_CoverPicture value, $Res Function(_$_CoverPicture) then) =
      __$$_CoverPictureCopyWithImpl<$Res>;
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
class __$$_CoverPictureCopyWithImpl<$Res>
    extends _$CoverPictureCopyWithImpl<$Res, _$_CoverPicture>
    implements _$$_CoverPictureCopyWith<$Res> {
  __$$_CoverPictureCopyWithImpl(
      _$_CoverPicture _value, $Res Function(_$_CoverPicture) _then)
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
    return _then(_$_CoverPicture(
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
class _$_CoverPicture implements _CoverPicture {
  const _$_CoverPicture(
      {required this.fullSizeUrl,
      required this.midDensityFullWidthUrl,
      required this.highDensityFullWidthUrl,
      required this.squareThumbnailUrl,
      this.blurhash});

  factory _$_CoverPicture.fromJson(Map<String, dynamic> json) =>
      _$$_CoverPictureFromJson(json);

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
    return 'CoverPicture(fullSizeUrl: $fullSizeUrl, midDensityFullWidthUrl: $midDensityFullWidthUrl, highDensityFullWidthUrl: $highDensityFullWidthUrl, squareThumbnailUrl: $squareThumbnailUrl, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoverPicture &&
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
  _$$_CoverPictureCopyWith<_$_CoverPicture> get copyWith =>
      __$$_CoverPictureCopyWithImpl<_$_CoverPicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverPictureToJson(
      this,
    );
  }
}

abstract class _CoverPicture implements CoverPicture {
  const factory _CoverPicture(
      {required final String fullSizeUrl,
      required final String midDensityFullWidthUrl,
      required final String highDensityFullWidthUrl,
      required final String squareThumbnailUrl,
      final String? blurhash}) = _$_CoverPicture;

  factory _CoverPicture.fromJson(Map<String, dynamic> json) =
      _$_CoverPicture.fromJson;

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
  _$$_CoverPictureCopyWith<_$_CoverPicture> get copyWith =>
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
