import 'package:flutter/material.dart';
import 'package:furniture_shop/data/fake.dart';
import 'package:furniture_shop/screens/category/category_screen.dart';
import 'package:furniture_shop/screens/home/widgets/category_card.dart';
import 'package:furniture_shop/screens/home/widgets/header.dart';
import 'package:furniture_shop/widgets/app_bottom_navbar.dart';

import 'widgets/image_card.dart';
import 'widgets/promotion_card.dart';
import 'widgets/section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onCategorySelected(category) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CategoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              Section(
                  title: "Categories",
                  children: Fake.categories.map((e) {
                    return CategoryCard(
                      iconPath: e.iconPath,
                      title: e.title,
                      onTap: () {
                        onCategorySelected(e);
                      },
                    );
                  }).toList()),
              SizedBox(
                height: 18,
              ),
              Section(
                title: "Today\'s Promo",
                children: Fake.promotions.map((e) {
                  return PromotionCard(
                    backgroundImagePath: e.backgroundImagePath,
                    caption: e.caption,
                    imagePath: e.imagePath,
                    reverseGradient: e.reverseGradient,
                    subTitle: e.subTitle,
                    tag: e.tag,
                    title: e.title,
                  );
                }).toList(),
              ),
              SizedBox(
                height: 18,
              ),
              Section(
                title: "Trending Furniture",
                children: Fake.trending.map((e) {
                  return ImageCard(
                    imagePath: e,
                  );
                }).toList(),
              ),
              SizedBox(
                height: 18,
              ),
              Section(
                title: "Features Furniture",
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
