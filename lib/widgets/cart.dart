import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/constant/constant.dart';

class Cart extends StatelessWidget {
  final int numberOfItemsInCart;

  const Cart({Key key, @required this.numberOfItemsInCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 24.0,
          height: 24.0,
          child: SvgPicture.asset("assets/icons/cart.svg"),
        ),
        if (numberOfItemsInCart > 0)
          Positioned(
            top: -4.0,
            right: -4.0,
            child: Container(
              height: 12.0,
              width: 12.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                  border: Border.all(color: Colors.white, width: 1)),
              child: Text(
                "$numberOfItemsInCart",
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ],
    );
  }
}
