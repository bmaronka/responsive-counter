import 'package:flutter/material.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';
import 'package:responsive_counter/pages/counters/cubit/counters_cubit.dart';

class CountersBody extends StatelessWidget {
  const CountersBody({
    required this.cubit,
    required this.counters,
    required this.activeCounter,
    required this.isFullPage,
    super.key,
  });

  final CountersCubit cubit;
  final Map<int, Counter> counters;
  final Counter? activeCounter;
  final bool isFullPage;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: counters.length,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (context, index) {
          final counter = counters[index];

          if (counter == null) {
            return const SizedBox.shrink();
          }

          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            selected: activeCounter?.index == index,
            selectedColor: Theme.of(context).colorScheme.onPrimaryContainer,
            selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
            title: Text('Counter #${counter.index}'),
            trailing: Text(counter.count.toString()),
            onTap: () {
              cubit.setActiveCounter(counter);
            },
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 8),
      );
}
