import 'package:responsive_counter/domain/counters/model/counter.dart';

abstract class CounterDetailsService {
  void notifyIncrement(Counter counter);

  Stream<Counter> getIncrementStream();
}
