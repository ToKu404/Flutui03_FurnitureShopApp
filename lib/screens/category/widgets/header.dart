import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:furniture_shop/constant/constant.dart';
import 'package:furniture_shop/data/fake.dart';
import 'package:furniture_shop/screens/category/widgets/action_button.dart';
import 'package:furniture_shop/screens/category/widgets/filtered_modal_bottom_sheet.dart';
import 'package:furniture_shop/screens/category/widgets/vertical_sep.dart';
import 'package:furniture_shop/widgets/cart.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.05),
            offset: Offset(0, 10),
            blurRadius: 10)
      ], color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 60,
                  child: InkWell(
                    child: SvgPicture.asset("assets/icons/back.svg"),
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
                Text(
                  "Living Room",
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: 60,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/search.svg",
                        height: 18,
                      ),
                      Cart(numberOfItemsInCart: Fake.numberOfItemsInCart)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionButton(
                  title: "Filter",
                  iconPath: "assets/icons/controls.svg",
                  onTap: () {
                    _settingModalButtonSheet(context);
                  },
                  active: true,
                ),
                VerticalSep(),
                ActionButton(
                    title: "Sort",
                    iconPath: "assets/icons/sort.svg",
                    onTap: () {}),
                VerticalSep(),
                ActionButton(
                    title: "List",
                    iconPath: "assets/icons/list.svg",
                    onTap: () {}),
                VerticalSep(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _settingModalButtonSheet(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      context: context,
      builder: (BuildContext bc) {
        return FilteredModalBottomSheet();
      });
}
