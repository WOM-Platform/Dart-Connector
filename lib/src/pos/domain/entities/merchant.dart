import 'package:dart_wom_connector/src/pos/domain/entities/point_of_sale.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant.freezed.dart';

enum MerchantAccess { admin, user }

@freezed
class Merchant with _$Merchant {
  const factory Merchant({
    required String id,
    required String name,
    required String address,
    required String zipCode,
    required MerchantAccess access,
    required String city,
    required String country,
    required String fiscalCode,
    required List<PointOfSale> posList,
    String? description,
    String? url,
  }) = _Merchant;
}
