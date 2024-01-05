import 'package:flutter/material.dart';

class CountersPage extends StatelessWidget {
  const CountersPage({
    super.key,
    this.isFullPage = true,
  });

  final bool isFullPage;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Counters'),
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Counter'),
            ),
          ],
          // actions: [CountersAppBarActions()],
        ),
        body: ListView.separated(
          itemCount: 0,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              selected: isFullPage ? false : index == 0,
              selectedColor: Theme.of(context).colorScheme.onPrimaryContainer,
              selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
              title: const Text('Counter'),
              trailing: Text(''),
              onTap: () async {},
            ),
          ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8),
        ),
      );
}

class CountersAppBarActions extends StatelessWidget {
  const CountersAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final orientation = MediaQuery.orientationOf(context);

    return Row(
      children: [
        Column(
          children: [
            const Text('width'),
            Text('$width'),
          ],
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            const Text('height'),
            Text('$height'),
          ],
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            const Text('Orientation'),
            Text(orientation.name),
          ],
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
