part of 'counter_details_cubit.dart';

@freezed
class CounterDetailsState with _$CounterDetailsState {
  @Implements<CounterDetailsStateBuilder>()
  const factory CounterDetailsState.build({
    required Counter? counter,
  }) = _CounterDetailsStateBuild;
}

abstract class CounterDetailsStateBuilder {}
