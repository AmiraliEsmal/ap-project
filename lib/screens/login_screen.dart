import 'package:flutter/material.dart';
import 'package:proj/components/extention.dart';

import '../res/dimens.dart';
import '../res/strings.dart';
import '../route/names.dart';
import '../widgets/app_text_field.dart';
import '../widgets/main_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _controllercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dimens.large.height,
                  AppTextField(label: AppStrings.UserName,
                      hint: "نام کاربری خود را وارد کنید",
                      controller: _controllercontroller),
                  AppTextField(label: AppStrings.pass,
                      hint: "رمز عبور خود را وارد کنید",
                      controller: _controllercontroller),
                  MainButton(
                      text: "ورود" ,
                      onPressed: () =>
                          Navigator.pushNamed(context, Screens.mainScreen)),


                ],
              )),
        ));
  }
}
