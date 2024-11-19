import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:main_screen/src/tabs/json_screen/bloc/json_screen_bloc.dart';
import 'package:main_screen/src/tabs/json_screen/ui/widgets/widgets.dart';
import 'package:navigation/navigation.dart';

@RoutePage()
class JsonScreen extends StatelessWidget {
  const JsonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JsonScreenBloc>(
      create: (BuildContext context) => JsonScreenBloc(
        getScreenComponentsUseCase: appLocator<GetScreenComponentsUseCase>(),
      )..add(const Initialize()),
      child: const Scaffold(
        backgroundColor: AppColors.transparent,
        body: JsonScreenContent(),
      ),
    );
  }
}
