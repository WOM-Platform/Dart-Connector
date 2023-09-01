import 'package:freezed_annotation/freezed_annotation.dart';

part 'instrument.freezed.dart';
part 'instrument.g.dart';

@freezed
class Instrument with _$Instrument {
  const factory Instrument({
    required String id,
    required String name,
    String? apiKey,
    required String privateKey,
    required String publicKey,
    required Set<String> enabledAims,
    required Map<String, int>? perAimBudget,
    required bool locationIsFixed,
    String? url,
    Location? defaultLocation,
    CustomGenerator? customGenerator,
  }) = _Instrument;

  factory Instrument.fromJson(Map<String, dynamic> json) =>
      _$InstrumentFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double latitude,
    required double longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

/*"title": "Il mio generatore",
		  "logo": {
			"fullSizeUrl": "http://pictures.wom.social/pos-covers/urbino-cinema-teatro-ducale/5e906ca875974fa6b7dea926930ff519-full.jpg",
			"midDensityFullWidthUrl": "http://pictures.wom.social/pos-covers/urbino-cinema-teatro-ducale/5e906ca875974fa6b7dea926930ff519-mid.jpg",
			"highDensityFullWidthUrl": "http://pictures.wom.social/pos-covers/urbino-cinema-teatro-ducale/5e906ca875974fa6b7dea926930ff519-high.jpg",
			"squareThumbnailUrl": "http://pictures.wom.social/pos-covers/urbino-cinema-teatro-ducale/5e906ca875974fa6b7dea926930ff519-thumb.jpg",
			"blurHash": "KEAmo58^tT?bD$?bx]D%?b"
		  },
		  "enableCustomGeneration": false,
		  "templates": [
			{
			  "name": "Visita biblioteca",
			  "presetWomCount": 100,
			  "presetWomAim": "C",
			  "presetWomLocation": {
				"latitude": 43.7248,
				"longitude": 12.6358
			  },
			  "description": "Breve descrizione per il pulsante (opzionale)",
			  "guide": "Lunga descrizione con spiegazione di compilazione nella schermata (opzionale)"
			}
		  ]*/

@freezed
class CustomGenerator with _$CustomGenerator {
  const factory CustomGenerator({
    required String title,
    required bool enableCustomGeneration,
    required List<Template> templates,
    Logo? logo,
  }) = _CustomGenerator;

  factory CustomGenerator.fromJson(Map<String, dynamic> json) =>
      _$CustomGeneratorFromJson(json);
}

@freezed
class Template with _$Template {
  const factory Template({
    required String name,
    required String description,
    String? guide,
    String? presetWomAim,
    int? presetWomCount,
    Location? presetWomLocation,
    @Default(false) bool batchGeneration,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}

@freezed
class Logo with _$Logo {
  const factory Logo({
    required String fullSizeUrl,
    required String midDensityFullWidthUrl,
    required String highDensityFullWidthUrl,
    required String squareThumbnailUrl,
    required String blurHash,
  }) = _Logo;

  factory Logo.fromJson(Map<String, dynamic> json) =>
      _$LogoFromJson(json);
}
