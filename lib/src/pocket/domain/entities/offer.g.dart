// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferPagination _$$_OfferPaginationFromJson(Map<String, dynamic> json) =>
    _$_OfferPagination(
      data: (json['data'] as List<dynamic>)
          .map((e) => OfferPOS.fromJson(e as Map<String, dynamic>))
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

_$_OfferPOS _$$_OfferPOSFromJson(Map<String, dynamic> json) => _$_OfferPOS(
      posId: json['posId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      cover: OfferPicture.fromJson(json['cover'] as Map<String, dynamic>),
      url: json['url'] as String?,
      position:
          OfferPosition.fromJson(json['position'] as Map<String, dynamic>),
      distance: json['distance'] as String?,
      offers: (json['offers'] as List<dynamic>)
          .map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OfferPOSToJson(_$_OfferPOS instance) =>
    <String, dynamic>{
      'posId': instance.posId,
      'name': instance.name,
      'description': instance.description,
      'cover': instance.cover,
      'url': instance.url,
      'position': instance.position,
      'distance': instance.distance,
      'offers': instance.offers,
    };

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      offerId: json['offerId'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      cost: json['cost'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'offerId': instance.offerId,
      'title': instance.title,
      'description': instance.description,
      'cost': instance.cost,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_OfferPicture _$$_OfferPictureFromJson(Map<String, dynamic> json) =>
    _$_OfferPicture(
      fullSizeUrl: json['fullSizeUrl'] as String,
      midDensityFullWidthUrl: json['midDensityFullWidthUrl'] as String,
      highDensityFullWidthUrl: json['highDensityFullWidthUrl'] as String,
      squareThumbnailUrl: json['squareThumbnailUrl'] as String,
      blurhash: json['blurhash'] as String?,
    );

Map<String, dynamic> _$$_OfferPictureToJson(_$_OfferPicture instance) =>
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
