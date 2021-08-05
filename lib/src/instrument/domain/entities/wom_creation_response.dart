import 'package:freezed_annotation/freezed_annotation.dart';

part 'wom_creation_response.freezed.dart';

@freezed
class WomCreationResponse with _$WomCreationResponse {
  const factory WomCreationResponse({
    required String registryUrl,
    required String nonce,
    required String otc,
    required String password,
    required String link,
    required int count,
  }) = _WomCreationResponse;
}

/*
class RequestWomCreationResponse {
  static String REGISTRY_URL = 'registryUrl';
  static String NONCE = 'nonce';
  static String OTC = 'otc';
  static String LINK = 'link';
  static String PASSWORD = 'password';

  String? registryUrl;
  String? nonce;
  String? otc;
  String? password;
  String? error;
  String? link;

  bool get hasError => error != null;

  RequestWomCreationResponse.error(this.error);

  RequestWomCreationResponse.fromMap(Map<String, dynamic> map)
      : registryUrl = map[REGISTRY_URL] as String?,
        nonce = map[NONCE] as String?,
        password = map[PASSWORD] as String?,
        otc = map[OTC] as String?,
        link = map[LINK] as String?;

  @override
  String toString() {
    return 'otc: $otc, nonce: $nonce, password: $password, registryUrl: $registryUrl, link: $link';
  }
}
*/
