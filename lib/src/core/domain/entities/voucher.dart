import 'package:dart_wom_connector/src/instrument/domain/entities/creation_mode.dart';
import 'package:equatable/equatable.dart';

class Voucher extends Equatable {
  final String? id;
  final double? lat;
  final double? long;
  final String? aim;
  final int? count;
  final DateTime? dateTime;
  final String? secret;
  final CreationMode creationMode;

  Voucher({
    this.id,
    this.lat,
    this.long,
    this.aim,
    this.count,
    this.dateTime,
    this.secret,
    this.creationMode = CreationMode.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'latitude': lat,
      'longitude': long,
      'aim': aim,
      'count': count,
      'timestamp': dateTime!.toIso8601String(),
      'secret': secret,
      'creationMode': creationMode.toValue,
    };
  }

  factory Voucher.fromMap(Map<String, dynamic> map) {
    return Voucher(
      id: map['id'],
      lat: map['latitude'],
      long: map['longitude'],
      aim: map['aim'],
      dateTime: DateTime.parse(map['timestamp']),
      secret: map['secret'],
      creationMode: creationModeFromString(map['creationMode']),
    );
  }

  @override
  List<Object?> get props => [
        id,
        lat,
        long,
        aim,
        count,
        dateTime,
        secret,
        creationMode,
      ];
}
