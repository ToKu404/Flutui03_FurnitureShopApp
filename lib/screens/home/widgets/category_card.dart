import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/constant/constant.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function() onTap;
  const CategoryCard({Key key, this.title, this.iconPath, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 90,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            color: Colors.black.withOpacity(.1),
            blurRadius: 15,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        child: Center(
          child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  height: 42,
                  width: 42,
                  child: SvgPicture.asset(
                    iconPath,
                    color: primaryColor,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ]),
        ),
      ),
    );
  }
}
