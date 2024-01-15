import 'package:responsive_counter/domain/counters/model/counter.dart';

abstract class CountersService {
  void addOrUpdateCounter(Counter counter);

  Map<int, Counter> getCounters();

  Counter? getCounter(int? index);

  void notifySetActiveCounter(Counter counter);

  Stream<Counter> getActiveCounterStream();

  Counter? getLastActiveCounter();
}
