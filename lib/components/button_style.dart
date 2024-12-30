import 'package:flutter/material.dart';
import 'package:proj/res/dimens.dart';

class AppButtonStyles{
  static ButtonStyle mainBttonStyle = ButtonStyle(
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.medium))
    ),
  );
}