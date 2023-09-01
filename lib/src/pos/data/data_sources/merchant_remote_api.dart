import 'package:dart_wom_connector/src/core/data/http_helper.dart';
import 'package:dart_wom_connector/src/pos/data/dto/delete_merchant_response.dart';
import 'package:dio/dio.dart';

// import 'package:pos/src/constants.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'api.g.dart';

// @riverpod
// SignUpRemoteApi signUpRemoteApi(SignUpRemoteApiRef ref) {
//   return SignUpRemoteApi(ref.watch(dioProvider));
// }
//
// @Riverpod(keepAlive: true)
// Dio dio(DioRef ref) {
//   return Dio(
//     BaseOptions(
//       baseUrl: 'https://$domain',
//       headers: {
//         HttpHeaders.contentTypeHeader: 'application/json',
//       },
//     ),
//   );
// }

abstract class IMerchantRemoteApi {
  Future<String> singUp(
    String email,
    String name,
    String surname,
    String password,
  );

  Future<String> createMerchant({
    required String name,
    required String fiscalCode,
    required String address,
    required String primaryActivity,
    required String zipCode,
    required String city,
    required String country,
    required String token,
    String? googleMapsPlaceId,
    String? formattedAddress,
    String? streetNumber,
    String? description,
    String? url,
  });

  Future<bool> sendVerificationEmail(String userId, String token);

  Future<String> createPOS({
    required String ownerMerchantId,
    required String name,
    required String token,
    String? description,
    double? latitude,
    double? longitude,
    String? url,
  });

  Future deleteMerchant({
    required String merchantId,
    required String token,
    bool dryRun = false,
  });
}

class MerchantRemoteApi implements IMerchantRemoteApi {
  final Dio dio;

  MerchantRemoteApi(this.dio);

  @override
  Future<String> singUp(
    String email,
    String name,
    String surname,
    String password,
  ) async {
    final url = '/api/v1/user/register';
    try {
      final response = await dio.post(
        url,
        data: <String, dynamic>{
          'email': email,
          'name': name,
          'surname': surname,
          'password': password,
        },
      );
      if (response.statusCode == 201) {
        final map = Map.from(response.data);
        return map['id'];
      }
      throw HttpHelper.unknownError(url);
    } on DioException catch (e) {
      if (e.response != null) {
        throw HttpHelper.handleDioError(url, e.response!);
      } else {
        throw HttpHelper.unknownError(url);
      }
    }
  }

  @override
  Future<bool> sendVerificationEmail(String userId, String token) async {
    final url = '/api/v1/user/$userId/request-verification';
    try {
      final response = await dio.post(url,
          options: Options(
            headers: {
              'authorization': 'Bearer $token',
            },
          ));
      if (response.statusCode == 200) {
        return true;
      }
      throw HttpHelper.unknownError(url);
    } on DioException catch (e) {
      if (e.response != null) {
        throw HttpHelper.handleDioError(url, e.response!);
      } else {
        throw HttpHelper.unknownError(url);
      }
    }
  }

  /*/v1/merchant/ (autenticata)
- Name (min length 8)
- FiscalCode (min 11, max 16)
- PrimaryActivity (vedi messaggio sotto)
- Address
- ZIP code
- City
- Country
- Description (opzionale)
- Url (opzionale)*/
  @override
  Future<String> createMerchant({
    required String name,
    required String fiscalCode,
    required String address,
    required String primaryActivity,
    required String zipCode,
    required String city,
    required String country,
    String? googleMapsPlaceId,
    String? formattedAddress,
    String? streetNumber,
    String? description,
    String? url,
    required String token,
  }) async {
    final u = '/api/v1/merchant';
    try {
      final response = await dio.post(
        u,
        data: <String, dynamic>{
          'name': name,
          'fiscalCode': fiscalCode,
          'address': address,
          'primaryActivity': primaryActivity,
          'zipCode': zipCode,
          'city': city,
          'country': country,
          'description': description,
          'url': url,
          'googleMapsPlaceId': googleMapsPlaceId,
          'formattedAddress': formattedAddress,
          'streetNumber': streetNumber,
        },
        options: Options(
          headers: {
            'authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 201) {
        final map = Map.from(response.data);
        return map['id'];
      }
      throw HttpHelper.unknownError(u);
    } on DioException catch (e) {
      if (e.response != null) {
        throw HttpHelper.handleDioError(u, e.response!);
      } else {
        throw HttpHelper.unknownError(u);
      }
    }
  }

/*POST /v1/pos/ (autenticata)
- OwnerMerchantId (ID da richiesta precedente)
- Name (min 4, max 128)
- Description (opzionale, max 4096)
- Latitude (opzionale)
- Longitude (opzionale)
- Url (opzionale)*/

  @override
  Future<String> createPOS({
    required String ownerMerchantId,
    required String name,
    String? description,
    String? streetName,
    String? streetNumber,
    String? zipCode,
    String? country,
    String? city,
    String? formattedAddress,
    String? googleMapsPlaceId,
    double? latitude,
    double? longitude,
    String? url,
    required String token,
  }) async {
    final u = '/api/v1/pos';
    try {
      final response = await dio.post(
        u,
        data: <String, dynamic>{
          'ownerMerchantId': ownerMerchantId,
          'name': name,
          'latitude': latitude,
          'longitude': longitude,
          'description': description,
          'url': url,
          'address': {
            'streetName': streetName,
            'streetNumber': streetNumber,
            'zipCode': zipCode,
            'country': country,
            'city': city,
            'formattedAddress': formattedAddress,
            'googleMapsPlaceId': googleMapsPlaceId,
          }
        },
        options: Options(
          headers: {
            'authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 201) {
        final map = Map.from(response.data);
        return map['id'];
      }
      throw HttpHelper.unknownError(u);
    } on DioException catch (e) {
      if (e.response != null) {
        throw HttpHelper.handleDioError(u, e.response!);
      } else {
        throw HttpHelper.unknownError(u);
      }
    }
  }

  @override
  Future<DeleteMerchantResponse> deleteMerchant({
    required String merchantId,
    required String token,
    bool dryRun = false,
  }) async {
    final url = '/api/v1/merchant/$merchantId';
    try {
      final response = await dio.delete(
        url,
        queryParameters: {
          'dryRun': dryRun,
        },
        options: Options(
          headers: {
            'authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return DeleteMerchantResponse.fromJson(response.data);
      }
      throw HttpHelper.unknownError(url);
    } on DioException catch (e) {
      if (e.response != null) {
        throw HttpHelper.handleDioError(url, e.response!);
      } else {
        throw HttpHelper.unknownError(url);
      }
    }
  }
}
