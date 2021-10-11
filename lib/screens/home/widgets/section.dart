import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const Section({Key key, this.title, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, height: 1),
              ),
              InkWell(
                onTap: () {},
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 16, height: 1, color: primaryColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
              child: Wrap(
                spacing: 18,
                children: children,
              ),
            ),
          ),
        )
      ],
    );
  }
}
