import 'package:freezed_annotation/freezed_annotation.dart';


part 'offer.freezed.dart';

part 'offer.g.dart';

@freezed
class OfferPagination with _$OfferPagination {
  const factory OfferPagination({
    required List<OfferPOS> data,
    required int totalCount,
    required int page,
    required int pageSize,
    required bool hasPrevious,
    required bool hasNext,
  }) = _OfferPagination;

  factory OfferPagination.fromJson(Map<String, dynamic> json) =>
      _$OfferPaginationFromJson(json);
}

@freezed
class OfferPOS with _$OfferPOS {
  const factory OfferPOS({
    required String posId,
    required String name,
    required List<Offer> offers,
    required OfferPicture cover,
    required OfferPosition position,
    String? description,
    String? url,
    String? distance,
  }) = _OfferPOS;

  factory OfferPOS.fromJson(Map<String, dynamic> json) =>
      _$OfferPOSFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    required String offerId,
    required String title,
    required int cost,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? description,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

@freezed
class OfferPicture with _$OfferPicture {
  const factory OfferPicture({
    required String fullSizeUrl,
    required String midDensityFullWidthUrl,
    required String highDensityFullWidthUrl,
    required String squareThumbnailUrl,
    String? blurhash
  }) = _OfferPicture;

  factory OfferPicture.fromJson(Map<String, dynamic> json) =>
      _$OfferPictureFromJson(json);
}

@freezed
class OfferPosition with _$OfferPosition {
  const factory OfferPosition({
    required double latitude,
    required double longitude,
  }) = _OfferPosition;

  factory OfferPosition.fromJson(Map<String, dynamic> json) =>
      _$OfferPositionFromJson(json);
}


