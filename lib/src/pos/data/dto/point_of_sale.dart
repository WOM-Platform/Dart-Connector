import 'package:dart_wom_connector/src/pocket/domain/entities/offer.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/point_of_sale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_of_sale.freezed.dart';

part 'point_of_sale.g.dart';

@freezed
class PointOfSaleDTO with _$PointOfSaleDTO {
  const factory PointOfSaleDTO({
    required String privateKey,
    required String id,
    required String name,
    required bool isActive,
    String? description,
    CoverPicture? cover,
    double? latitude,
    double? longitude,
    String? url,
  }) = _PointOfSaleDTO;

  factory PointOfSaleDTO.fromJson(Map<String, dynamic> json) =>
      _$PointOfSaleDTOFromJson(json);
}

extension PointOfSaleDTOX on PointOfSaleDTO {
  PointOfSale toDomain() {
    return PointOfSale(
      id: id,
      url: url,
      name: name,
      latitude: latitude,
      longitude: longitude,
      privateKey: privateKey,
      isActive: isActive,
      description: description,
      cover: cover,
    );
  }
}
