import 'package:dart_wom_connector/dart_wom_connector.dart';
import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/core/domain/entities/pos_user.dart';
import 'package:dart_wom_connector/src/core/domain/entities/user_type_enum.dart';
import 'package:dart_wom_connector/src/pos/data/data_sources/pos_remote_data_sources.dart';
import 'package:dart_wom_connector/src/pos/data/dto/merchant.dart';

import '../../core/controller/client.dart';
import '../data/repositories/pos_repository_impl.dart';
import 'entities/payment_request_response.dart';
import 'entities/request_payment_payload.dart';
import 'repositories/pos_repository.dart';

class PosClient extends Client {
  late PointOfSaleRepository _pointOfSaleRepository;

  PosClient(String domain, String registryKey)
      : super(domain: domain, registryKey: registryKey) {
    _pointOfSaleRepository = PointOfSaleRepositoryImpl(
      PointOfSaleRemoteDataSourcesImpl(domain),
      registryKey,
    );
  }

  Future<POSUser> authenticate(String username, String password) async {
    final map =
    await HttpHelper.authenticate(username, password, domain, UserType.POS);
    print(map);
    final name = map[User.dbName];
    final surname = map[User.dbSurname];
    final email = map[User.dbEmail];
    final merchants = map['merchants'] != null
        ? map['merchants'].map<Merchant>((m) =>
        (MerchantDTO.fromJson(m)).toDomain()).toList()
        : <Merchant>[];
    return POSUser(
      merchants: merchants,
      name: name,
      surname: surname,
      email: email,
    );
  }

  Future<PaymentRequestResponse> requestPayment(
      RequestPaymentPayload requestPaymentPayload, String? privateKey) async {
    return _pointOfSaleRepository.requestPayment(
      privateKey,
      requestPaymentPayload,
    );
  }
}
