import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterList extends StatefulWidget {
  final Function(List<String>) onSelect;

  const FilterList({Key key, this.onSelect}) : super(key: key);

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  List<String> selected = [];
  List<dynamic> options = [
    {
      'icon': SvgPicture.asset("assets/icons/tag.svg"),
      'title': 'Discount',
    },
    {
      'icon': SvgPicture.asset("assets/icons/delivery.svg"),
      'title': 'Free Delivery'
    },
    {
      'icon': SvgPicture.asset("assets/icons/card.svg"),
      'title': 'Installment Plan'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
