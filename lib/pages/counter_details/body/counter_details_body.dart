import 'package:flutter/material.dart';
import 'package:responsive_counter/domain/counters/model/counter.dart';

class CounterDetailsBody extends StatelessWidget {
  const CounterDetailsBody({
    required this.counter,
    super.key,
  });

  final Counter? counter;

  @override
  Widget build(BuildContext context) => Center(
        child: counter == null
            ? const Text('Add first counter')
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed counter #${counter!.index} this many times:',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    counter!.count.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
      );
}
