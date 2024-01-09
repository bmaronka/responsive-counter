import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counter_details/service/counter_details_service.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/domain/counters/service/counters_service.dart';
import 'package:responsive_counter/utils/counter_cubit.dart';

part 'counters_cubit.freezed.dart';
part 'counters_state.dart';

@injectable
class CountersCubit extends CounterCubit<CountersState> {
  CountersCubit(
    this._countersService,
    this._counterDetailsService,
  ) : super(
          const CountersState.build(
            counters: {},
            activeCounter: null,
          ),
        ) {
    _incrementStreamListener();
  }

  final CountersService _countersService;
  final CounterDetailsService _counterDetailsService;

  final _counters = <int, Counter>{};
  Counter? _activeCounter;
  StreamSubscription? _incrementSubscription;

  Future<void> _incrementStreamListener() async {
    await _incrementSubscription?.cancel();
    _incrementSubscription = _counterDetailsService.getIncrementStream().listen(_updateCounters);
  }

  void _updateCounters(Counter counter) {
    _counters[counter.index] = counter;
    _emitBuild();
  }

  void setActiveCounter(Counter counter) {
    _setActiveCounter(counter);
    _emitBuild();
  }

  void addCounter() {
    final counter = Counter(index: _counters.length);

    _counters[counter.index] = counter;
    _setActiveCounter(counter);

    _emitBuild();
  }

  void _setActiveCounter(Counter counter) {
    _activeCounter = counter;
    _countersService.notifySetActiveCounter(counter);
  }

  void _emitBuild() => emit(
        CountersState.build(
          counters: {..._counters},
          activeCounter: _activeCounter,
        ),
      );
}
