// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instrument _$$_InstrumentFromJson(Map<String, dynamic> json) =>
    _$_Instrument(
      id: json['id'] as String,
      name: json['name'] as String,
      apiKey: json['apiKey'] as String?,
      privateKey: json['privateKey'] as String,
      publicKey: json['publicKey'] as String,
      enabledAims: (json['enabledAims'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
      perAimBudget: (json['perAimBudget'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      locationIsFixed: json['locationIsFixed'] as bool,
      url: json['url'] as String?,
      defaultLocation: json['defaultLocation'] == null
          ? null
          : Location.fromJson(json['defaultLocation'] as Map<String, dynamic>),
      customGenerator: json['customGenerator'] == null
          ? null
          : CustomGenerator.fromJson(
              json['customGenerator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InstrumentToJson(_$_Instrument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'apiKey': instance.apiKey,
      'privateKey': instance.privateKey,
      'publicKey': instance.publicKey,
      'enabledAims': instance.enabledAims.toList(),
      'perAimBudget': instance.perAimBudget,
      'locationIsFixed': instance.locationIsFixed,
      'url': instance.url,
      'defaultLocation': instance.defaultLocation,
      'customGenerator': instance.customGenerator,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_CustomGenerator _$$_CustomGeneratorFromJson(Map<String, dynamic> json) =>
    _$_CustomGenerator(
      title: json['title'] as String,
      enableCustomGeneration: json['enableCustomGeneration'] as bool,
      templates: (json['templates'] as List<dynamic>)
          .map((e) => Template.fromJson(e as Map<String, dynamic>))
          .toList(),
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomGeneratorToJson(_$_CustomGenerator instance) =>
    <String, dynamic>{
      'title': instance.title,
      'enableCustomGeneration': instance.enableCustomGeneration,
      'templates': instance.templates,
      'logo': instance.logo,
    };

_$_Template _$$_TemplateFromJson(Map<String, dynamic> json) => _$_Template(
      name: json['name'] as String,
      description: json['description'] as String,
      guide: json['guide'] as String?,
      presetWomAim: json['presetWomAim'] as String?,
      presetWomCount: json['presetWomCount'] as int?,
      presetWomLocation: json['presetWomLocation'] == null
          ? null
          : Location.fromJson(
              json['presetWomLocation'] as Map<String, dynamic>),
      batchGeneration: json['batchGeneration'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TemplateToJson(_$_Template instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'guide': instance.guide,
      'presetWomAim': instance.presetWomAim,
      'presetWomCount': instance.presetWomCount,
      'presetWomLocation': instance.presetWomLocation,
      'batchGeneration': instance.batchGeneration,
    };

_$_Logo _$$_LogoFromJson(Map<String, dynamic> json) => _$_Logo(
      fullSizeUrl: json['fullSizeUrl'] as String,
      midDensityFullWidthUrl: json['midDensityFullWidthUrl'] as String,
      highDensityFullWidthUrl: json['highDensityFullWidthUrl'] as String,
      squareThumbnailUrl: json['squareThumbnailUrl'] as String,
      blurHash: json['blurHash'] as String,
    );

Map<String, dynamic> _$$_LogoToJson(_$_Logo instance) => <String, dynamic>{
      'fullSizeUrl': instance.fullSizeUrl,
      'midDensityFullWidthUrl': instance.midDensityFullWidthUrl,
      'highDensityFullWidthUrl': instance.highDensityFullWidthUrl,
      'squareThumbnailUrl': instance.squareThumbnailUrl,
      'blurHash': instance.blurHash,
    };
