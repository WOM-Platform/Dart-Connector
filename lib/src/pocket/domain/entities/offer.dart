import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/simple_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';

part 'offer.g.dart';

@freezed
class OfferPagination with _$OfferPagination {
  const factory OfferPagination({
    required List<VirtualPOS> data,
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
class VirtualPOS with _$VirtualPOS {
  const factory VirtualPOS({
    required String id,
    required String name,
    CoverPicture? cover,
    String? description,
    String? url,
  }) = _VirtualPOS;

  factory VirtualPOS.fromJson(Map<String, dynamic> json) =>
      _$VirtualPOSFromJson(json);
}

@freezed
class OfferPOS with _$OfferPOS {
  const factory OfferPOS({
    required String id,
    required String name,
    required List<Offer> offers,
    required OfferPosition position,
    CoverPicture? cover,
    String? description,
    String? url,
    String? distance,
  }) = _OfferPOS;

  factory OfferPOS.fromJson(Map<String, dynamic> json) =>
      _$OfferPOSFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    required String registryUrl,
    required String link,
    required String otc,
    required String password,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    required String id,
    required String title,
    required int cost,
    required DateTime createdOn,
    required DateTime lastUpdate,
    @Default(true) bool deactivated,
    required Payment payment,
    SimpleFilter? filter,
    String? description,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}

@freezed
class CoverPicture with _$CoverPicture {
  const factory CoverPicture(
      {required String fullSizeUrl,
      required String midDensityFullWidthUrl,
      required String highDensityFullWidthUrl,
      required String squareThumbnailUrl,
      String? blurhash}) = _CoverPicture;

  factory CoverPicture.fromJson(Map<String, dynamic> json) =>
      _$CoverPictureFromJson(json);
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
