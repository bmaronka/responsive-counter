part of 'counters_cubit.dart';

@freezed
class CountersState with _$CountersState {
  @Implements<CountersStateBuilder>()
  const factory CountersState.build({
    required Map<int, Counter> counters,
    required Counter? activeCounter,
  }) = _CountersStateBuild;
}

abstract class CountersStateBuilder {}
