import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Furniture Shop",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: primaryColor,
          splashColor: Colors.transparent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
