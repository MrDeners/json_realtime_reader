import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:main_screen/src/tabs/json_screen/bloc/json_screen_bloc.dart';

class JsonScreenContent extends StatelessWidget {
  const JsonScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final JsonScreenBloc bloc = context.read<JsonScreenBloc>();

    return BlocBuilder<JsonScreenBloc, JsonScreenState>(
      builder: (BuildContext context, JsonScreenState state) {
        final ScreenModel screenProperties = state.screen ?? const ScreenModel();
        final List<ComponentModel> components = screenProperties.components;

        final List<Widget> widgets = components
            .map(
              (ComponentModel e) => WidgetConverter.convert(
                e,
                onPressed: () => bloc.add(const Continue()),
              ),
            )
            .toList();

        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Container(
          decoration: BoxDecoration(
            color: ColorConverter.fromHex(screenProperties.backgroundColor),
            borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.contentPadding12),
            child: ListView(children: widgets),
          ),
        );
      },
    );
  }
}
