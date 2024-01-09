import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/extensions/stream_mixin.dart';

@singleton
class CounterDetailsService with StreamMixin<Counter> {
  void notifyIncrement(Counter counter) => notifyStream(counter);

  Stream<Counter> getIncrementStream() => getStream();
}
