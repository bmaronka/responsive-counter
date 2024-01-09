import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/domain/service/counters_service.dart';
import 'package:responsive_counter/utils/counter_cubit.dart';

part 'counter_details_cubit.freezed.dart';
part 'counter_details_state.dart';

@injectable
class CounterDetailsCubit extends CounterCubit<CounterDetailsState> {
  CounterDetailsCubit(
    this._countersService,
  ) : super(const CounterDetailsState.build(counter: null));

  final CountersService _countersService;

  Counter? _counter;
  StreamSubscription? _activeCounterSubscription;

  Future<void> init() async {
    await _activeCounterListener();
    _emitBuild();
  }

  Future<void> _activeCounterListener() async {
    await _activeCounterSubscription?.cancel();
    _activeCounterSubscription = _countersService.getActiveCounterStream().listen(_setCounter);
  }

  void _setCounter(Counter counter) {
    _counter = counter;
    _emitBuild();
  }

  void _emitBuild() => emit(
        CounterDetailsState.build(
          counter: _counter,
        ),
      );

  @override
  Future<void> close() {
    _activeCounterSubscription?.cancel();
    return super.close();
  }
}
