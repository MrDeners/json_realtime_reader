import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:domain/models/component_params_model/component_params_model.dart';
import 'package:flutter/material.dart';

class WidgetConverter {
  static Widget convert(ComponentModel component, {VoidCallback? onPressed}) {
    final ComponentParamsModel params = component.params;

    switch (component.type) {
      case ComponentType.textView:
        return Text(
          params.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConverter.fromHex(params.color),
            fontSize: params.size,
          ),
        );
      case ComponentType.margin:
        return SizedBox(
          height: params.paddingH,
          width: params.paddingV,
        );
      case ComponentType.input:
        return TextFormField(
          decoration: InputDecoration(
            labelText: params.inputName,
            fillColor: ColorConverter.fromHex(params.color),
          ),
        );
      case ComponentType.nextButton:
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(
            params.text,
            style: TextStyle(
              color: ColorConverter.fromHex(params.color),
            ),
          ),
        );
      case ComponentType.undefined:
        return Container(
          decoration: BoxDecoration(
            color: AppColors.redRyb,
            borderRadius: BorderRadius.circular(AppDimens.mainBorderRadius),
            border: Border.all(color: AppColors.white),
          ),
          child: Text(LocaleKeys.undefined.tr()),
        );
    }
  }
}
