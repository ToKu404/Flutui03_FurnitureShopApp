import 'package:flutter/material.dart';
import 'package:furniture_shop/data/fake.dart';
import 'package:furniture_shop/widgets/cart.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Furniture Shop",
                  style: TextStyle(fontSize: 28, height: 1),
                ),
                Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
              ],
            ),
            Text(
              "Get unique furniture for your home",
              style: TextStyle(
                height: 2,
                fontSize: 15,
                color: Colors.black38,
              ),
            )
          ],
        ));
  }
}
