import 'package:rxdart/rxdart.dart';

mixin StreamMixin<T> {
  /// Not disposed because it lives in singleton
  // ignore: close_sinks
  final BehaviorSubject<T> _stream = BehaviorSubject<T>();

  void notifyStream(T value) => _stream.sink.add(value);

  Stream<T> getStream() => _stream.stream;

  T? getValue() => _stream.valueOrNull;
}
