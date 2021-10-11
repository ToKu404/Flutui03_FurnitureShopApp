import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  const ImageCard({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            offset: Offset.zero,
            blurRadius: 15,
          )
        ],
        image: DecorationImage(
            image: AssetImage(this.imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
