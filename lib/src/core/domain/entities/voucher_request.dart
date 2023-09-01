import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_request.freezed.dart';

part 'voucher_request.g.dart';

@freezed
class VoucherRequest with _$VoucherRequest {
  const factory VoucherRequest({
    required double latitude,
    required double longitude,
    required String aim,
    required int count,
    @VoucherTimestampConverter() required DateTime timestamp,
    @CreationModeConverter() CreationMode? creationMode,
  }) = _VoucherRequest;

  factory VoucherRequest.fromJson(Map<String, dynamic> json) =>
      _$VoucherRequestFromJson(json);
}