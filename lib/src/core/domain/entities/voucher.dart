import 'package:equatable/equatable.dart';

class Voucher extends Equatable {
  final String id;
  final double lat;
  final double long;
  final String aim;
  final int count;
  final DateTime dateTime;
  final String secret;

  Voucher(
      {this.id,
      this.lat,
      this.long,
      this.aim,
      this.count,
      this.dateTime,
      this.secret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Latitude': lat,
      'Longitude': long,
      'Aim': aim,
      'Count': count,
      'Timestamp': dateTime.toIso8601String(),
      'secret': secret,
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
    );
  }

  @override
  List<Object> get props => [
        id,
        lat,
        long,
        aim,
        count,
        dateTime,
        secret,
      ];
}
