import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

class ColorList extends StatefulWidget {
  final List<Color> colors;

  final Function(Color) onSelect;

  const ColorList({Key key, this.colors, this.onSelect}) : super(key: key);

  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  Color selected;
  select(color) {
    if (selected == color)
      selected = null;
    else
      selected = color;

    if (widget.onSelect != null) widget.onSelect(selected);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 20,
          children: widget.colors.map((e) {
            return InkWell(
              onTap: () {
                select(e);
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    border: selected == e
                        ? Border.all(width: 3, color: primaryColor)
                        : null,
                    color: e,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          offset: Offset.zero,
                          blurRadius: 15)
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
