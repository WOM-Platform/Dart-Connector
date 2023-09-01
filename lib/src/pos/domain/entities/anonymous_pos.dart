import 'package:freezed_annotation/freezed_annotation.dart';

part 'anonymous_pos.freezed.dart';
part 'anonymous_pos.g.dart';

@freezed
class AnonymousPos with _$AnonymousPos {
  const factory AnonymousPos({
    required String posId,
    required String posPrivateKey,
  }) = _AnonymousPos;

  factory AnonymousPos.fromJson(Map<String, dynamic> json) =>
      _$AnonymousPosFromJson(json);
}