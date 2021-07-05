import 'package:freezed_annotation/freezed_annotation.dart';

part 'instrument.freezed.dart';
part 'instrument.g.dart';

@freezed
class Instrument with _$Instrument {
  const factory Instrument({
    required String id,
    required String name,
    required String privateKey,
    required String publicKey,
    required Set<String> enabledAims,
    required Map<String, int> perAimBudget,
    required bool locationIsFixed,
    String? url,
    Location? defaultLocation,
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
