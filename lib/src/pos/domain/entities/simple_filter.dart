import 'package:freezed_annotation/freezed_annotation.dart';

import 'bounds.dart';

part 'simple_filter.freezed.dart';

part 'simple_filter.g.dart';

@freezed
class SimpleFilter with _$SimpleFilter {
  const factory SimpleFilter({
    String? aim,
    Bounds? bounds,
    int? maxAge,
  }) = _SimpleFilter;

  factory SimpleFilter.fromJson(Map<String, dynamic> json) =>
      _$SimpleFilterFromJson(json);
}

extension SimpleFilterX on SimpleFilter {
  int? get maxAgeToMilliseconds => maxAge != null ? maxAge! * 86400000 : null;
}
/*class SimpleFilter {
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
}*/
