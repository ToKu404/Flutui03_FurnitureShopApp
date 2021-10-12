import 'package:flutter/material.dart';
import 'package:furniture_shop/data/fake.dart';
import 'package:furniture_shop/screens/category/widgets/furniture_grid_item.dart';
import 'package:furniture_shop/screens/category/widgets/header_sliver.dart';
import 'package:furniture_shop/widgets/app_bottom_navbar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: HeaderSliver(minExtent: 120, maxExtent: 120),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: .65,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: Fake.furniture.asMap().entries.map((e) {
                return FurnitureGridItem(
                    item: e.value,
                    margin: EdgeInsets.only(
                        left: e.key.isEven ? 16 : 0,
                        right: e.key.isOdd ? 16 : 0));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
