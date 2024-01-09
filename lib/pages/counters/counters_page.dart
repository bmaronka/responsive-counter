import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:responsive_counter/pages/counters/body/counters_body.dart';
import 'package:responsive_counter/pages/counters/cubit/counters_cubit.dart';
import 'package:responsive_counter/utils/use_once.dart';

class CountersPage extends HookWidget {
  const CountersPage({
    super.key,
    this.isFullPage = true,
  });

  final bool isFullPage;

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<CountersCubit>();
    final state = useBlocBuilder(
      cubit,
      buildWhen: _buildWhen,
    );
    useOnce(cubit.init);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counters'),
        actions: [
          TextButton.icon(
            onPressed: cubit.addCounter,
            icon: const Icon(Icons.add),
            label: const Text('Add Counter'),
          ),
        ],
      ),
      body: state.maybeWhen(
        build: (counters, activeCounter) => CountersBody(
          cubit: cubit,
          counters: counters,
          activeCounter: activeCounter,
          isFullPage: isFullPage,
        ),
        orElse: SizedBox.shrink,
      ),
    );
  }

  bool _buildWhen(CountersState state) => state is CountersStateBuilder;
}
