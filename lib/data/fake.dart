import 'package:furniture_shop/models/category.dart';
import 'package:furniture_shop/models/promotion.dart';

class Fake {
  static int numberOfItemsInCart = 1;

  static List<Category> categories = [
    Category("assets/icons/chest.svg", "Living Room"),
    Category("assets/icons/bathtub.svg", "Bath"),
    Category("assets/icons/desk.svg", "Living Room"),
  ];

  static List<Promotion> promotions = [
    Promotion(
      backgroundImagePath: 'assets/images/splash1.png',
      reverseGradient: false,
      title: 'All Item Furniture\nDiscount Up to',
      subTitle: '50%',
      tag: '30 April 2019',
      imagePath: 'assets/images/furniture/furniture1.png',
    ),
    Promotion(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: true,
      title: 'Get voucher gift',
      subTitle: '\$50.00',
      caption: '*for new member\'s\nof Furniture Shop',
    )
  ];

  static List<String> trending = [
    'assets/images/furniture/jacalyn-beales-435629-unsplash.png',
    'assets/images/furniture/sven-brandsma-1379481-unsplash.png',
  ];

  static List<String> featured = [
    'assets/images/furniture/pexels-eric-montanah-1350789.jpg',
    'assets/images/furniture/pexels-patryk-kamenczak-775219.jpg',
    'assets/images/furniture/pexels-pixabay-276534.jpg',
    'assets/images/furniture/pexels-steve-johnson-923192.jpg'
  ];
}
