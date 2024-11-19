import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:main_screen/src/tabs/realtime_screen/bloc/realtime_screen_bloc.dart';
import 'package:main_screen/src/tabs/realtime_screen/ui/widgets/task_widget.dart';

class RealtimeScreenContent extends StatelessWidget {
  const RealtimeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final RealtimeScreenBloc bloc = context.read<RealtimeScreenBloc>();

    return BlocBuilder<RealtimeScreenBloc, RealtimeScreenState>(
      builder: (BuildContext context, RealtimeScreenState state) {
        final List<TaskModel> tasks = state.tasks ?? <TaskModel>[];

        return tasks.isEmpty
            ? Center(
                child: Text(
                  LocaleKeys.noTasks.watchTr(context),
                  style: AppFonts.heading1.copyWith(
                    color: context.theme.colors.whiteBackground,
                  ),
                ),
              )
            : ListView.separated(
                itemCount: tasks.length,
                itemBuilder: (BuildContext context, int index) =>
                    tasks[index].status != TaskStatus.deleted
                        ? TaskWidget(
                            task: tasks[index],
                            onPressed: () =>
                                AppToast.showToast(context, text: tasks[index].status.getTitle()),
                            onDelete: () => bloc.add(DeleteTask(index)),
                          )
                        : const SizedBox.shrink(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: AppDimens.contentPadding12),
              );
      },
    );
  }
}
