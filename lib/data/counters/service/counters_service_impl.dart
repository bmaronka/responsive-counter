import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/domain/counters/service/counters_service.dart';
import 'package:responsive_counter/extensions/stream_mixin.dart';

@LazySingleton(as: CountersService)
class CountersServiceImpl with StreamMixin<Counter> implements CountersService {
  final Map<int, Counter> _cachedCounters = {};

  @override
  void addOrUpdateCounter(Counter counter) => _cachedCounters[counter.index] = counter;

  @override
  Map<int, Counter> getCounters() => _cachedCounters;

  @override
  Counter? getCounter(int? index) => _cachedCounters[index];

  @override
  void notifySetActiveCounter(Counter counter) => notifyStream(counter);

  @override
  Stream<Counter> getActiveCounterStream() => getStream();

  @override
  Counter? getLastActiveCounter() => getValue();
}
