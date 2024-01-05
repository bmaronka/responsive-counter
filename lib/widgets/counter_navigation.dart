import 'package:flutter/material.dart';
import 'package:responsive_counter/constants/counter_page.dart';

enum CounterNavigationType {
  bottomBar,
  rail;
}

class CounterNavigation extends StatelessWidget {
  CounterNavigation({
    required this.type,
    required this.selectedPage,
    required this.onSelect,
    super.key,
  });

  final CounterNavigationType type;
  final CounterPage selectedPage;
  final Function(int) onSelect;

  CounterNavigation.bottomBar({
    required this.selectedPage,
    required this.onSelect,
  }) : type = CounterNavigationType.bottomBar;

  CounterNavigation.rail({
    required this.selectedPage,
    required this.onSelect,
  }) : type = CounterNavigationType.rail;

  Iterable<Object> get _destinations => CounterPage.values.map(
        (page) => switch (type) {
          CounterNavigationType.bottomBar => NavigationDestination(
              icon: Icon(page.icon),
              label: page.label,
            ),
          CounterNavigationType.rail => NavigationRailDestination(
              icon: Icon(page.icon),
              label: Text(page.label),
            ),
        },
      );

  @override
  Widget build(BuildContext context) => switch (type) {
        CounterNavigationType.bottomBar => NavigationBar(
            selectedIndex: selectedPage.index,
            destinations: _destinations.cast<Widget>().toList(),
            onDestinationSelected: onSelect,
          ),
        CounterNavigationType.rail => NavigationRail(
            labelType: NavigationRailLabelType.all,
            selectedIndex: selectedPage.index,
            destinations: _destinations.cast<NavigationRailDestination>().toList(),
            onDestinationSelected: onSelect,
          ),
      };
}
