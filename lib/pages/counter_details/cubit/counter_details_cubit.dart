import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counter_details/service/counter_details_service.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/domain/counters/service/counters_service.dart';
import 'package:responsive_counter/utils/counter_cubit.dart';

part 'counter_details_cubit.freezed.dart';
part 'counter_details_state.dart';

@injectable
class CounterDetailsCubit extends CounterCubit<CounterDetailsState> {
  CounterDetailsCubit(
    this._countersService,
    this._counterDetailsService,
  ) : super(const CounterDetailsState.build(counter: null)) {
    _activeCounterListener();
  }

  final CountersService _countersService;
  final CounterDetailsService _counterDetailsService;

  Counter? _counter;
  StreamSubscription? _activeCounterSubscription;

  void init() {
    _countersService.getLastActiveCounter();
  }

  Future<void> _activeCounterListener() async {
    await _activeCounterSubscription?.cancel();
    _activeCounterSubscription = _countersService.getActiveCounterStream().listen(_setCounter);
  }

  void _setCounter(Counter counter) {
    _counter = counter;
    _emitBuild();
  }

  void increment() {
    if (_counter == null) {
      return;
    }

    _counter = _counter!.copyWith(count: _counter!.count + 1);
    _counterDetailsService.notifyIncrement(_counter!);
    _countersService.notifySetActiveCounter(_counter!);
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
