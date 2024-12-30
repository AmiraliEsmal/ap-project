import 'package:flutter/cupertino.dart';
import 'package:proj/components/extention.dart';
import 'package:proj/components/text_style.dart';
import 'package:proj/res/dimens.dart';
import 'package:proj/res/strings.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset("assets/png/avatar.png"),
        ),
        Dimens.medium.height,
        const Text(AppStrings.chooseProfileImage, style: AppTextStyles.avatarText,)
      ],
    );
  }
}
