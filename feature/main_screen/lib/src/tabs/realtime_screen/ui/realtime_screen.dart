import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main_screen/src/tabs/realtime_screen/bloc/realtime_screen_bloc.dart';
import 'package:main_screen/src/tabs/realtime_screen/ui/widgets/realtime_screen_content.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class RealtimeScreen extends StatelessWidget {
  const RealtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RealtimeScreenBloc>(
      create: (BuildContext context) => RealtimeScreenBloc(
        observeTasksUseCase: appLocator<ObserveTasksUseCase>(),
        deleteTaskUseCase: appLocator<DeleteTaskUseCase>(),
      )..add(const Initialize()),
      child: const Scaffold(
        backgroundColor: AppColors.transparent,
        body: RealtimeScreenContent(),
      ),
    );
  }
}
