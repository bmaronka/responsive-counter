import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';

@freezed
class Counter with _$Counter {
  factory Counter({
    required int index,
    @Default(0) int count,
  }) = _Counter;
}
