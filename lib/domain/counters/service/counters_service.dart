import 'package:injectable/injectable.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/extensions/stream_mixin.dart';

@singleton
class CountersService with StreamMixin<Counter> {
  void notifySetActiveCounter(Counter counter) => notifyStream(counter);

  Stream<Counter> getActiveCounterStream() => getStream();
}
