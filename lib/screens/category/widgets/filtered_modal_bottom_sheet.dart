import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

class FilteredModalBottomSheet extends StatelessWidget {
  void close(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  const FilteredModalBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      close(context);
                    },
                    child: Icon(Icons.close),
                  ),
                ),
                Text(
                  "Filter",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 100,
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Text(
                      "Reset",
                      style: TextStyle(color: primaryColor, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Price Range",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              child: Wrap(
                children: [
                  Container(
                    width: double.infinity / 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
