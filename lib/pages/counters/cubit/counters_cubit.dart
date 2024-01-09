import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/domain/service/counters_service.dart';
import 'package:responsive_counter/utils/counter_cubit.dart';

part 'counters_cubit.freezed.dart';
part 'counters_state.dart';

@injectable
class CountersCubit extends CounterCubit<CountersState> {
  CountersCubit(this._countersService)
      : super(
          const CountersState.build(
            counters: [],
            activeCounter: null,
          ),
        );

  final CountersService _countersService;

  final _counters = <Counter>[];
  Counter? _activeCounter;

  void setActiveCounter(Counter counter) {
    _setActiveCounter(counter);
    _emitBuild();
  }

  void addCounter() {
    final counter = Counter(index: _counters.length);

    _counters.add(counter);
    _setActiveCounter(counter);

    _emitBuild();
  }

  void _setActiveCounter(Counter counter) {
    _activeCounter = counter;
    _countersService.notifySetActiveCounter(counter);
  }

  void _emitBuild() => emit(
        CountersState.build(
          counters: [..._counters],
          activeCounter: _activeCounter,
        ),
      );
}
