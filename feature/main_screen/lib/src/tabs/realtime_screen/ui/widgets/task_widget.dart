import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;

  final VoidCallback onPressed;
  final VoidCallback onDelete;

  const TaskWidget({
    required this.task,
    required this.onPressed,
    required this.onDelete,
    super.key,
  });

  Color getBorderColor(BuildContext context) {
    switch (task.status) {
      case TaskStatus.inProgress:
        return context.theme.colors.accent;
      case TaskStatus.done:
        return context.theme.colors.successGreen;
      case TaskStatus.failed:
        return context.theme.colors.errorRed;
      case TaskStatus.deleted:
        return context.theme.colors.blackBackground;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.contentPadding12,
          vertical: AppDimens.contentPadding8,
        ),
        decoration: BoxDecoration(
          color: context.theme.colors.whiteBackground,
          borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
          border: Border.all(
            color: getBorderColor(context),
            width: AppDimens.bigBorderWidth,
          ),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${LocaleKeys.id.watchTr(context)} ${task.taskId}',
                  style: AppFonts.heading3.copyWith(color: context.theme.colors.textPrimary),
                ),
                const SizedBox(height: AppDimens.contentPadding8),
                Text(
                  '${LocaleKeys.status.watchTr(context)} ${task.status.getTitle()}',
                  style: AppFonts.heading3.copyWith(color: context.theme.colors.textPrimary),
                ),
                const SizedBox(height: AppDimens.contentPadding8),
                Text(
                  '${LocaleKeys.created.watchTr(context)} ${task.createdAt?.toDateString()}',
                  style: AppFonts.heading3.copyWith(color: context.theme.colors.textPrimary),
                ),
              ],
            ),
            const Spacer(),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 100,
                minWidth: 50,
              ),
              child: ElevatedButton(
                onPressed: onDelete,
                child: Text(
                  LocaleKeys.delete.watchTr(context),
                  style: AppFonts.heading3.copyWith(color: context.theme.colors.textPrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
