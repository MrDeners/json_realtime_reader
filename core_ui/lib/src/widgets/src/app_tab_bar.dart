import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatefulWidget {
  final List<Tab> tabs;
  final List<Widget> screens;

  const AppTabBar({
    required this.tabs,
    required this.screens,
    super.key,
  });

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          unselectedLabelColor: context.theme.colors.whiteBackground,
          labelStyle: AppFonts.heading2,
          unselectedLabelStyle: AppFonts.subText2Regular,
          tabs: widget.tabs,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.contentPadding16),
            child: TabBarView(
              controller: _tabController,
              children: widget.screens,
            ),
          ),
        ),
      ],
    );
  }
}
