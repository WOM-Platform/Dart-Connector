import 'bounds.dart';

class SimpleFilter {
  static String AIM = 'aim';
  static String BOUNDS = 'bounds';
  static String MAX_AGE = 'maxAge';

  final String? aimCode;
  final Bounds? bounds;
  final int? maxAge;

  SimpleFilter({this.aimCode, this.bounds, this.maxAge});

  SimpleFilter.fromMap(Map<String, dynamic> json)
      : aimCode = json[AIM],
        bounds = json[BOUNDS] != null ? Bounds.fromMap(json[BOUNDS]) : null,
        maxAge = json[MAX_AGE];

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    data[AIM] = aimCode;
    data[MAX_AGE] = maxAge;
    if (bounds != null) {
      data[BOUNDS] = bounds!.toMap();
    }

    return data;
  }

  int get maxAgeToMilliseconds => maxAge! * 86400000;

  @override
  String toString() {
    return 'Data required, aim: $aimCode, bounds: ${bounds.toString()}, maxAge: $maxAge';
  }
}
