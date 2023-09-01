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

@freezed
class Aim with _$Aim {
  const factory Aim({
    required String code,
    @Default(false) bool hidden,
    required Map<String, dynamic> titles,
    List<Aim>? children,
    String? iconFile,
  }) = _Aim;
}

extension AimX on Aim {
  String? title({String? languageCode = 'en'}) => titles[languageCode];
}
