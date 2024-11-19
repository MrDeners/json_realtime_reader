import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import 'package:main_screen/src/tabs/json_screen/ui/json_screen.dart';
import 'package:main_screen/src/tabs/realtime_screen/ui/realtime_screen.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> with SingleTickerProviderStateMixin {
  late final List<Tab> tabs;

  final List<Widget> screens = <Widget>[
    const JsonScreen(),
    const RealtimeScreen(),
  ];

  @override
  void initState() {
    super.initState();
    tabs = <Tab>[
      Tab(
        icon: const Icon(Icons.file_copy_outlined),
        text: LocaleKeys.json.tr(),
      ),
      Tab(
        icon: const Icon(Icons.local_fire_department),
        text: LocaleKeys.realtime.tr(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AppTabBar(tabs: tabs, screens: screens);
  }
}
