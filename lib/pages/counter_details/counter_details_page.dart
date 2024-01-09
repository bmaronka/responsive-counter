import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:responsive_counter/pages/counter_details/body/counter_details_body.dart';
import 'package:responsive_counter/pages/counter_details/cubit/counter_details_cubit.dart';
import 'package:responsive_counter/utils/use_once.dart';

class CounterDetailsPage extends HookWidget {
  const CounterDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<CounterDetailsCubit>();
    final state = useBlocBuilder(
      cubit,
      buildWhen: _buildWhen,
    );
    useOnce(cubit.init);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter details'),
      ),
      body: state.maybeWhen(
        build: (counter) => CounterDetailsBody(counter: counter),
        orElse: SizedBox.shrink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cubit.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  bool _buildWhen(CounterDetailsState state) => state is CounterDetailsStateBuilder;
}
