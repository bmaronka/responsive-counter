import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/extensions/stream_mixin.dart';

@singleton
class CountersService with StreamMixin<Counter> {
  final Map<int, Counter> _cachedCounters = {};

  void addOrUpdateCounter(Counter counter) => _cachedCounters[counter.index] = counter;

  Map<int, Counter> getCounters() => _cachedCounters;

  Counter? getCounter(int? index) => _cachedCounters[index];

  void notifySetActiveCounter(Counter counter) => notifyStream(counter);

  Stream<Counter> getActiveCounterStream() => getStream();

  Counter? getLastActiveCounter() => getValue();
}
