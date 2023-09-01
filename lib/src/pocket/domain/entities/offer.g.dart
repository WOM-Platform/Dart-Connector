// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferPagination _$$_OfferPaginationFromJson(Map<String, dynamic> json) =>
    _$_OfferPagination(
      data: (json['data'] as List<dynamic>)
          .map((e) => VirtualPOS.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      hasPrevious: json['hasPrevious'] as bool,
      hasNext: json['hasNext'] as bool,
    );

Map<String, dynamic> _$$_OfferPaginationToJson(_$_OfferPagination instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'hasPrevious': instance.hasPrevious,
      'hasNext': instance.hasNext,
    };

_$_VirtualPOS _$$_VirtualPOSFromJson(Map<String, dynamic> json) =>
    _$_VirtualPOS(
      id: json['id'] as String,
      name: json['name'] as String,
      cover: json['cover'] == null
          ? null
          : CoverPicture.fromJson(json['cover'] as Map<String, dynamic>),
      description: json['description'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_VirtualPOSToJson(_$_VirtualPOS instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'description': instance.description,
      'url': instance.url,
    };

_$_OfferPOS _$$_OfferPOSFromJson(Map<String, dynamic> json) => _$_OfferPOS(
      id: json['id'] as String,
      name: json['name'] as String,
      offers: (json['offers'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      position:
          OfferPosition.fromJson(json['position'] as Map<String, dynamic>),
      cover: json['cover'] == null
          ? null
          : CoverPicture.fromJson(json['cover'] as Map<String, dynamic>),
      description: json['description'] as String?,
      url: json['url'] as String?,
      distance: json['distance'] as String?,
    );

Map<String, dynamic> _$$_OfferPOSToJson(_$_OfferPOS instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'offers': instance.offers,
      'position': instance.position,
      'cover': instance.cover,
      'description': instance.description,
      'url': instance.url,
      'distance': instance.distance,
    };

_$_Payment _$$_PaymentFromJson(Map<String, dynamic> json) => _$_Payment(
      registryUrl: json['registryUrl'] as String,
      link: json['link'] as String,
      otc: json['otc'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'registryUrl': instance.registryUrl,
      'link': instance.link,
      'otc': instance.otc,
      'password': instance.password,
    };

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      id: json['id'] as String,
      title: json['title'] as String,
      cost: json['cost'] as int,
      createdOn: DateTime.parse(json['createdOn'] as String),
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
      deactivated: json['deactivated'] as bool? ?? true,
      payment: Payment.fromJson(json['payment'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : SimpleFilter.fromJson(json['filter'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'cost': instance.cost,
      'createdOn': instance.createdOn.toIso8601String(),
      'lastUpdate': instance.lastUpdate.toIso8601String(),
      'deactivated': instance.deactivated,
      'payment': instance.payment,
      'filter': instance.filter,
      'description': instance.description,
    };

_$_CoverPicture _$$_CoverPictureFromJson(Map<String, dynamic> json) =>
    _$_CoverPicture(
      fullSizeUrl: json['fullSizeUrl'] as String,
      midDensityFullWidthUrl: json['midDensityFullWidthUrl'] as String,
      highDensityFullWidthUrl: json['highDensityFullWidthUrl'] as String,
      squareThumbnailUrl: json['squareThumbnailUrl'] as String,
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$$_CoverPictureToJson(_$_CoverPicture instance) =>
    <String, dynamic>{
      'fullSizeUrl': instance.fullSizeUrl,
      'midDensityFullWidthUrl': instance.midDensityFullWidthUrl,
      'highDensityFullWidthUrl': instance.highDensityFullWidthUrl,
      'squareThumbnailUrl': instance.squareThumbnailUrl,
      'blurhash': instance.blurhash,
    };

_$_OfferPosition _$$_OfferPositionFromJson(Map<String, dynamic> json) =>
    _$_OfferPosition(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OfferPositionToJson(_$_OfferPosition instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
