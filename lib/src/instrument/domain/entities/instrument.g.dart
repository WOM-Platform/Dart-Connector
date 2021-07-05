// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instrument _$_$_InstrumentFromJson(Map<String, dynamic> json) {
  return _$_Instrument(
    id: json['id'] as String,
    name: json['name'] as String,
    privateKey: json['privateKey'] as String,
    publicKey: json['publicKey'] as String,
    enabledAims:
        (json['enabledAims'] as List<dynamic>).map((e) => e as String).toSet(),
    perAimBudget: Map<String, int>.from(json['perAimBudget'] as Map),
    locationIsFixed: json['locationIsFixed'] as bool,
    url: json['url'] as String?,
    defaultLocation: json['defaultLocation'] == null
        ? null
        : Location.fromJson(json['defaultLocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InstrumentToJson(_$_Instrument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'privateKey': instance.privateKey,
      'publicKey': instance.publicKey,
      'enabledAims': instance.enabledAims.toList(),
      'perAimBudget': instance.perAimBudget,
      'locationIsFixed': instance.locationIsFixed,
      'url': instance.url,
      'defaultLocation': instance.defaultLocation,
    };

_$_Location _$_$_LocationFromJson(Map<String, dynamic> json) {
  return _$_Location(
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
