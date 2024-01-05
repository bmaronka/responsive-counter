import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_counter/counter_app.dart';
import 'package:responsive_counter/injectable/injectable.dart';
import 'package:responsive_counter/utils/logging_bloc_observer.dart';

void main() => run();

void run() {
  initializeApp();

  runApp(MyApp());
}

@visibleForTesting
void initializeApp() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  Bloc.observer = LoggingBlocObserver();
}
