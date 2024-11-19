import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast extends Fluttertoast {
  static void showToast(
    BuildContext context, {
    required String text,
  }) {
    Fluttertoast.showToast(
      msg: text,
      gravity: ToastGravity.TOP,
      backgroundColor: context.theme.colors.successGreen,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
