
import 'package:dart_wom_connector/src/pos/domain/entities/merchant.dart';
import 'package:dart_wom_connector/src/pos/domain/entities/point_of_sale.dart';
import 'package:dart_wom_connector/src/pos/data/dto/point_of_sale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant.freezed.dart';

part 'merchant.g.dart';

@freezed
class MerchantDTO with _$MerchantDTO {
  const factory MerchantDTO({
    required String id,
    required String name,
    required String address,
    required String zipCode,
    required String city,
    required String country,
    required String fiscalCode,
    required List<PointOfSaleDTO> pos,
    String? description,
    String? url,
  }) = _MerchantDTO;

  factory MerchantDTO.fromJson(Map<String, dynamic> json) =>
      _$MerchantDTOFromJson(json);
}

extension MerchantDTOX on MerchantDTO {
  Merchant toDomain() {
    return Merchant(
      id: id,
      address: address,
      country: country,
      url: url,
      name: name,
      zipCode: zipCode,
      description: description,
      city: city,
      fiscalCode: fiscalCode,
      posList: pos.map((e) => e.toDomain()).toList(),
    );
  }
}

/*

class Merchant {
  final String id;
  final String name;

  // final String? name;
  final String address;
  final String zipCode;
  final String city;
  final String country;
  final String fiscalCode;
  final List<PointOfSale> posList;

  Merchant({
    required this.id,
    required this.name,
    required this.address,
    required this.zipCode,
    required this.city,
    required this.country,
    required this.fiscalCode,
    required this.posList,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Merchant &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          address == other.address &&
          zipCode == other.zipCode &&
          city == other.city &&
          country == other.country &&
          fiscalCode == other.fiscalCode &&
          posList == other.posList);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      address.hashCode ^
      zipCode.hashCode ^
      city.hashCode ^
      country.hashCode ^
      fiscalCode.hashCode ^
      posList.hashCode;

  @override
  String toString() {
    return 'Merchant{' +
        ' id: $id,' +
        ' name: $name,' +
        ' address: $address,' +
        ' zipCode: $zipCode,' +
        ' city: $city,' +
        ' country: $country,' +
        ' fiscalCode: $fiscalCode,' +
        ' posList: $posList,' +
        '}';
  }

  Merchant copyWith({
    String? id,
    String? name,
    String? address,
    String? zipCode,
    String? city,
    String? country,
    String? fiscalCode,
    String? profileImgUrl,
    List<PointOfSale>? posList,
  }) {
    return Merchant(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      country: country ?? this.country,
      fiscalCode: fiscalCode ?? this.fiscalCode,
      posList: posList ?? this.posList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'zipCode': zipCode,
      'city': city,
      'country': country,
      'fiscalCode': fiscalCode,
      'pos': posList.map((pos) => pos.toMap()).toList(),
    };
  }

  factory Merchant.fromMap(Map<String, dynamic> map) {
    return Merchant(
      id: map['id'] as String,
      name: map['name'] as String,
      address: map['address'] as String,
      zipCode: map['zipCode'] as String,
      city: map['city'] as String,
      country: map['country'] as String,
      fiscalCode: map['fiscalCode'] as String,
      posList: map['pos'] != null
          ? List.from(
              map['pos'].map<PointOfSale>((m) => PointOfSaleDTO.fromMap(m)))
          : [],
    );
  }
}
*/
