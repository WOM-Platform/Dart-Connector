import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_offer_request.freezed.dart';

part 'create_offer_request.g.dart';

@freezed
class CreateOfferRequestDTO with _$CreateOfferRequestDTO {
  const factory CreateOfferRequestDTO({
    required String title,
    required int cost,
    String? description,
    SimpleFilter? filter,
  }) = _CreateOfferRequestDTO;

  factory CreateOfferRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateOfferRequestDTOFromJson(json);
}
