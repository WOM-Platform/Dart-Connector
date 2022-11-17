import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';

part 'voucher.g.dart';

@freezed
class Voucher with _$Voucher {
  const factory Voucher({
    required String id,
    required double latitude,
    required double longitude,
    required String aim,
    @VoucherTimestampConverter() required DateTime timestamp,
    required String secret,
    @CreationModeConverter() CreationMode? creationMode,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}

class CreationModeConverter implements JsonConverter<CreationMode, String> {
  const CreationModeConverter();

  @override
  CreationMode fromJson(String value) {
    return creationModeFromString(value);
  }

  @override
  String toJson(CreationMode data) => data.toValue;
}

class VoucherTimestampConverter implements JsonConverter<DateTime, String> {
  const VoucherTimestampConverter();

  @override
  DateTime fromJson(String value) {
    return DateTime.parse(value);
  }

  @override
  String toJson(DateTime data) => data.toIso8601String();
}

