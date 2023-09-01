import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_merchant_response.freezed.dart';
part 'delete_merchant_response.g.dart';

@freezed
class DeleteMerchantResponse with _$DeleteMerchantResponse {
  const factory DeleteMerchantResponse({
    required bool operationPerformed,
    required int countOfDeletedMerchants,
    required int countOfDeletedPos,
    required int countOfDeletedOffers,
  }) = _DeleteMerchantResponse;

  factory DeleteMerchantResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteMerchantResponseFromJson(json);
}

