import 'package:flutter/material.dart';
import 'package:responsive_counter/pages/counters_page.dart';
import 'package:responsive_counter/pages/settings_page.dart';

enum CounterPage {
  counters('Counters', Icons.list),
  settings('Settings', Icons.settings);

  const CounterPage(
    this.label,
    this.icon,
  );

  final String label;
  final IconData icon;

  Widget get page => switch (this) {
        counters => CountersPage(),
        settings => SettingsPage(),
      };
}
