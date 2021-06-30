import 'package:dart_wom_connector/src/pos/domain/entities/point_of_sale.dart';

class Merchant {
  final String? id;
  final String? name;
  final String? address;
  final String? zipCode;
  final String? city;
  final String? country;
  final String? fiscalCode;
  final String? profileImgUrl;
  final List<PointOfSale>? posList;

  Merchant(
      {this.id,
      this.name,
      this.address,
      this.zipCode,
      this.city,
      this.country,
      this.fiscalCode,
      this.profileImgUrl,
      this.posList});

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
          profileImgUrl == other.profileImgUrl &&
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
      profileImgUrl.hashCode ^
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
        ' profileImgUrl: $profileImgUrl,' +
        ' pos: $posList,' +
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
      profileImgUrl: profileImgUrl ?? this.profileImgUrl,
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
      'profileImgUrl': profileImgUrl,
      'pos': posList!.map((pos) => pos.toMap()).toList(),
    };
  }

  factory Merchant.fromMap(Map<String, dynamic> map) {
    return Merchant(
      id: map['id'] as String?,
      name: map['name'] as String?,
      address: map['address'] as String?,
      zipCode: map['zipCode'] as String?,
      city: map['city'] as String?,
      country: map['country'] as String?,
      fiscalCode: map['fiscalCode'] as String?,
      profileImgUrl: map['profileImgUrl'] as String?,
      posList: map['pos'] != null
          ? List.from(
              map['pos'].map<PointOfSale>((m) => PointOfSale.fromMap(m)))
          : [],
    );
  }
}
