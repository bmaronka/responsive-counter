import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:responsive_counter/constants/counter_page.dart';
import 'package:responsive_counter/constants/screen_size.dart';
import 'package:responsive_counter/injectable/injectable.dart';
import 'package:responsive_counter/pages/counter_details/counter_details_page.dart';
import 'package:responsive_counter/pages/counters/counters_page.dart';
import 'package:responsive_counter/widgets/counter_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => HookedBlocConfigProvider(
        injector: () => getIt.get,
        builderCondition: (state) => state != null,
        listenerCondition: (state) => state != null,
        child: MaterialApp(
          title: 'Responsive Counter',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CounterApp(),
        ),
      );
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  CounterPage _selectedPage = CounterPage.counters;

  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
    final orientation = MediaQuery.orientationOf(context);

    void onSelect(int index) => setState(() => _selectedPage = CounterPage.values.firstWhere((p) => p.index == index));

    List<Widget> buildLargeLayout() {
      if (_selectedPage == CounterPage.counters) {
        return [
          const Expanded(
            child: CountersPage(isFullPage: false),
          ),
          const VerticalDivider(),
          const Expanded(
            child: CounterDetailsPage(),
          ),
        ];
      }

      return [
        Expanded(
          child: _selectedPage.page,
        ),
      ];
    }

    return Scaffold(
      bottomNavigationBar: switch ((screenSize, orientation)) {
        (_, Orientation.landscape) => null,
        (ScreenSize.large || ScreenSize.extraLarge, _) => null,
        (_, _) => CounterNavigation.bottomBar(
            selectedPage: _selectedPage,
            onSelect: onSelect,
          ),
      },
      body: SafeArea(
        child: switch ((screenSize, orientation)) {
          (_, Orientation.landscape) => Row(
              children: [
                CounterNavigation.rail(
                  selectedPage: _selectedPage,
                  onSelect: onSelect,
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: _selectedPage.page,
                ),
              ],
            ),
          (ScreenSize.large || ScreenSize.extraLarge, _) => Row(
              children: [
                CounterNavigation.rail(
                  selectedPage: _selectedPage,
                  onSelect: onSelect,
                ),
                const VerticalDivider(thickness: 1, width: 1),
                ...buildLargeLayout(),
              ],
            ),
          (_, _) => _selectedPage.page,
        },
      ),
    );
  }
}
