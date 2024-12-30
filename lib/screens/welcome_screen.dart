import 'package:flutter/material.dart';
import 'package:proj/screens/signup_screen.dart';

import '../widgets/custom_scaffold.dart';
import '../widgets/welcome_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 40
                ),
                child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "خوش آمدید\n",
                                style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                )
                            ),
                            TextSpan(
                                text: "\nلطفا برای ورود به فروشگاه ثبت نام کنید",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                )
                            )
                          ]
                      ),
                    )),
              )),
          Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                        child: WelcomeButton(
                          buttonText: "ورود",
                          onTap: LoginScreen(),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                    ),
                    Expanded(
                        child: WelcomeButton(
                          buttonText: "ثبت نام",
                          onTap: SingupScreen(),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
