import 'package:clinicapp/constants.dart';
import 'package:flutter/material.dart';

abstract class InputStyles {
  static final loginField = InputDecoration(
    contentPadding: EdgeInsets.all(opSpacing / 2),
    border: InputBorder.none,
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    errorBorder: InputBorder.none,
  );

  static final loginInputWrapper = BoxDecoration(
    color: opWashedWhite.withOpacity(0.3),
    borderRadius: BorderRadius.all(
      Radius.circular(opSpacing),
    ),
  );
}
