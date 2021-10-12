import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shop/constant/constant.dart';
import 'package:furniture_shop/screens/category/widgets/color_list.dart';

import 'filter_list.dart';

class FilteredModalBottomSheet extends StatelessWidget {
  void close(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  const FilteredModalBottomSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Colors.black12)),
                    width: (size.width / 2) - 55,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Minimum",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 15,
                    height: 1,
                    color: Colors.black38,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Colors.black12)),
                    width: (size.width / 2) - 55,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Maximum",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Item Filter",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: FilterList(onSelect: (selected) => print(selected)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Item Color",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ColorList(colors: [
              Colors.white,
              Colors.black87,
              Colors.blue,
              Colors.cyan,
              Colors.red,
            ], onSelect: (color) => print(color)),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    )),
                child: Text(
                  "Apply Filter",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  close(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
