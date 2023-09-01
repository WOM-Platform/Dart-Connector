import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geodesy/geodesy.dart';
import 'dart:math' as math;

part 'bounds.freezed.dart';

part 'bounds.g.dart';

@freezed
class Bounds with _$Bounds {
  const factory Bounds({
    required List<double> leftTop,
    required List<double> rightBottom,
  }) = _Bounds;

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
}

extension BoundsX on Bounds {
  bool contains(double lat, double long) {
    final geo = Geodesy();
    return geo.isGeoPointInBoundingBox(LatLng(lat, long),
        LatLng(leftTop[0], leftTop[1]), LatLng(rightBottom[0], rightBottom[1]));
  }

  LatLng get center {
    /* https://stackoverflow.com/a/4656937
     http://www.movable-type.co.uk/scripts/latlong.html

     coord 1: southWest
     coord 2: northEast

     phi: lat
     lambda: lng
  */

    final phi1 = degToRadian(rightBottom[0]);
    final lambda1 = degToRadian(rightBottom[1]);
    final phi2 = degToRadian(leftTop[0]);

    final dLambda = degToRadian(
      leftTop[1] - rightBottom[1],
    ); // delta lambda = lambda2-lambda1

    final bx = math.cos(phi2) * math.cos(dLambda);
    final by = math.cos(phi2) * math.sin(dLambda);
    final phi3 = math.atan2(math.sin(phi1) + math.sin(phi2),
        math.sqrt((math.cos(phi1) + bx) * (math.cos(phi1) + bx) + by * by));
    final lambda3 = lambda1 + math.atan2(by, math.cos(phi1) + bx);

    // phi3 and lambda3 are actually in radians and LatLng wants degrees
    return LatLng(radianToDeg(phi3), radianToDeg(lambda3));
  }
}

/*class Bounds {
  static String LEFT_TOP = 'leftTop';
  static String LEFT_TOP_LAT = 'leftTopLat';
  static String LEFT_TOP_LONG = 'leftTopLong';
  static String RIGHT_BOT = 'rightBottom';
  static String RIGHT_BOT_LAT = 'rightBottomLat';
  static String RIGHT_BOT_LONG = 'rightBottomLong';

  List<double>? leftTop;
  List<double>? rightBottom;

  Bounds({this.leftTop, this.rightBottom});

  Bounds.fromMap(Map<String, dynamic> json) {
    leftTop = json[LEFT_TOP].cast<double>();
    rightBottom = json[RIGHT_BOT].cast<double>();
  }

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    data[LEFT_TOP] = leftTop;
    data[RIGHT_BOT] = rightBottom;
    return data;
  }

  @override
  String toString() {
    return 'LT: ${leftTop![0].toStringAsFixed(2)},${leftTop![1].toStringAsFixed(2)};\n'
        'RB: ${rightBottom![0].toStringAsFixed(2)},${rightBottom![1].toStringAsFixed(2)}';
  }

  bool contains(double lat, double long) {
    final geo = Geodesy();
    return geo.isGeoPointInBoudingBox(LatLng(lat, long),
        LatLng(leftTop![0], leftTop![1]), LatLng(rightBottom![0], rightBottom![1]));
  }
}*/
