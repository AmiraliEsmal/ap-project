import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proj/components/extention.dart';
import 'package:proj/components/text_style.dart';
import 'package:proj/res/dimens.dart';
import 'package:proj/widgets/search_bar.dart';

import '../../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBtn(onTap: (){}),

              SizedBox(height: Dimens.large,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          // reverse: true,
                          itemBuilder: ((context, index) =>
                          ProductItem(productName: "productName", price: 2000,discount: 30,)
                      )),
                    ),

                    VerticalText(textCat: "پیشنهادات برتر",)
                  ],
                ),
              ),
              Dimens.medium.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          // reverse: true,
                          itemBuilder: ((context, index) =>
                              ProductItem(productName: "productName", price: 2000,discount: 30,)
                          )),
                    ),

                    VerticalText(textCat: "محصولات برتر",)
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}



class VerticalText extends StatelessWidget {
  const VerticalText({super.key, required this.textCat});
  final String textCat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(

        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                  angle: 1.5,
                  child: SvgPicture.asset("assets/svg/back.svg")),
                Dimens.medium.width,
                Text("مشاهده همه")
              ],
            ),
            Text(textCat, style: AppTextStyles.amazing,)
          ],
        ),
      ),
    );
  }
}



