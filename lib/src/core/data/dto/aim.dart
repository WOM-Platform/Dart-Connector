import 'package:dart_wom_connector/src/core/domain/entities/aim.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// class Aim {
//   static const kId = 'id';
//   static const kCode = 'code';
//   static const kIconFile = 'iconFile';
//   static const kChildren = 'children';
//   static const kTitles = 'titles';
//
//   final String? iconUrl;
//   final String? code;
//   List<Aim> children = [];
//   final Map<String, dynamic>? titles;
//
//   String? get title => titles!['en'] ?? null;
//
//   Aim({this.iconUrl, this.code, this.titles = const <String, dynamic>{}});
//
// /*  Aim.fromDbMap(Map<String, dynamic> map)
//       : code = map[CODE],
//         titles = json.decode(map[TITLES]),
//         iconUrl = map[ICON_URL];*/
//
//   Aim.fromMap(Map<String, dynamic> map)
//       : code = map[kCode],
//         titles = map[kTitles],
//         iconUrl = map[kIconFile];
// }

part 'aim.freezed.dart';
part 'aim.g.dart';

@freezed
class AimResponse with _$AimResponse {
  const factory AimResponse({
    required List<AimDTO> aims,
  }) = _AimResponse;

  factory AimResponse.fromJson(Map<String, dynamic> json) =>
      _$AimResponseFromJson(json);
}

@freezed
class AimDTO with _$AimDTO {
  const factory AimDTO({
    required String code,
    required Map<String, String> titles,
    String? iconFile,
    List<AimDTO>? children,
  }) = _AimDTO;

  factory AimDTO.fromJson(Map<String, dynamic> json) => _$AimDTOFromJson(json);
}

extension AimDTOX on AimDTO {
  Aim toDomain() {
    return Aim(
      code: code,
      titles: titles,
      children: children?.map((e) => e.toDomain()).toList(),
      iconFile: iconFile,
    );
  }
}
