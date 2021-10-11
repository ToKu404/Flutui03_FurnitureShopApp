import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.075),
          )
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.only(top: 24, bottom: 28),
      child: TextFormField(
        decoration: InputDecoration(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.black26,
            ),
            hintText: "Search Unique Furniture",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            border: InputBorder.none),
      ),
    );
  }
}
