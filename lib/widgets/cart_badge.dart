import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({super.key,
    this.count = 0

  });

  final count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 32,
          width: 32,
        ),
        SvgPicture.asset(
          "assets/svg/basket.svg",
          colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        Visibility(
            visible: count>0?true:false,
            child: Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                ),
                child: Text(count.toString(), style: TextStyle(color: Colors.white),),

              ),
            ))

      ],
    );
  }
}