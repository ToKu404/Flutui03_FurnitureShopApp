import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop/constant/constant.dart';

class AppBottomNavbar extends StatefulWidget {
  const AppBottomNavbar({Key key}) : super(key: key);

  @override
  _AppBottomNavbarState createState() => _AppBottomNavbarState();
}

class _AppBottomNavbarState extends State<AppBottomNavbar> {
  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/box.svg',
      'label': 'Delivery',
    },
    {
      'icon': 'assets/icons/chat.svg',
      'label': 'Messages',
    },
    {
      'icon': 'assets/icons/wallet.svg',
      'label': 'Wallet',
    },
    {
      'icon': 'assets/icons/profile.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      elevation: 24,
      type: BottomNavigationBarType.fixed,
      items: menuItems.map((e) {
        return BottomNavigationBarItem(
            icon: SvgPicture.asset(e["icon"]),
            label: e["label"],
            activeIcon: SvgPicture.asset(
              e["icon"],
              color: primaryColor,
            ));
      }).toList(),
      currentIndex: _selectedIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.black87,
      selectedLabelStyle: TextStyle(height: 1.5, fontSize: 12),
      unselectedLabelStyle: TextStyle(height: 1.5, fontSize: 12),
      onTap: _onItemTapped,
    );
  }
}
