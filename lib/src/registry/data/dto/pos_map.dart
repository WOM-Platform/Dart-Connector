import 'package:dart_wom_connector/src/registry/domain/entities/pos_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pos_map.freezed.dart';

part 'pos_map.g.dart';

/*
    {
    "pos": [
    {
    "id": "string",
    "name": "string",
    "position": {
    "latitude": 0,
    "longitude": 0
    },
    "url": "string"
    }
    ],
    "lowerLeft": {
    "latitude": 0,
    "longitude": 0
    },
    "upperRight": {
    "latitude": 0,
    "longitude": 0
    }
    }
 */
@freezed
class POSMapResponseDTO with _$POSMapResponseDTO {
  const factory POSMapResponseDTO({
    required List<POSMapDTO> pos,
  }) = _POSMapResponseDTO;

  factory POSMapResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$POSMapResponseDTOFromJson(json);
}

@freezed
class POSMapDTO with _$POSMapDTO {
  const factory POSMapDTO({
    required String id,
    required String name,
    required PositionDTO position,
    String? url,
  }) = _POSMapDTO;

  factory POSMapDTO.fromJson(Map<String, dynamic> json) =>
      _$POSMapDTOFromJson(json);
}

@freezed
class PositionDTO with _$PositionDTO {
  const factory PositionDTO({
    required double latitude,
    required double longitude,
  }) = _PositionDTO;

  factory PositionDTO.fromJson(Map<String, dynamic> json) =>
      _$PositionDTOFromJson(json);
}

extension PositionDTOX on PositionDTO {
  Position toDomain() {
    return Position(
      latitude: latitude,
      longitude: longitude,
    );
  }
}

extension POSMapDTOX on POSMapDTO {
  POSMap toDomain() {
    return POSMap(id: id, name: name, position: position.toDomain(), url:url);
  }
}
