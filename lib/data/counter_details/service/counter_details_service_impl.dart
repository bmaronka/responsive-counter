import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counter_details/service/counter_details_service.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/extensions/stream_mixin.dart';

@LazySingleton(as: CounterDetailsService)
class CounterDetailsServiceImpl with StreamMixin<Counter> implements CounterDetailsService {
  @override
  void notifyIncrement(Counter counter) => notifyStream(counter);

  @override
  Stream<Counter> getIncrementStream() => getStream();
}
