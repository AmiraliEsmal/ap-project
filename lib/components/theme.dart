
import 'package:flutter/material.dart';
import 'package:proj/res/colors.dart';
import 'package:proj/res/dimens.dart';

ThemeData lightTheme(){
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: WidgetStateColor.resolveWith((states){

        if(states.contains(WidgetState.focused)){
          return AppColors.focusedTextField;
        } else {
          return AppColors.unFocusedTextField;
        }

      }),
      contentPadding: EdgeInsets.all(Dimens.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.medium),
        borderSide: BorderSide(color: AppColors.primary),
      ),
    ),
  );
}