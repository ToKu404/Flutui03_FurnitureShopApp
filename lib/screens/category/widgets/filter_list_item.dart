import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

class FilterListItem extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool selected;
  final Function() onTap;

  const FilterListItem({
    Key key,
    @required this.title,
    @required this.icon,
    this.selected = false,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1,
          color: Colors.black12,
        ))),
        child: Row(
          children: [
            icon,
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            if (selected)
              Icon(
                Icons.check,
                color: primaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
