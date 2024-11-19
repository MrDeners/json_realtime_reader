import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:main_screen/src/main_screen/bloc/main_screen_bloc.dart';
import 'package:main_screen/src/main_screen/ui/widgets/widgets.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenBloc>(
      create: (BuildContext context) => MainScreenBloc(),
      child: Scaffold(
        body: BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (BuildContext context, MainScreenState state) {
            return const PageWrapper(
              child: SafeArea(
                child: MainTabs(),
              ),
            );
          },
        ),
      ),
    );
  }
}
