import 'package:flutter/material.dart';
import 'package:furniture_shop/constant/constant.dart';

class PromotionCard extends StatelessWidget {
  static final List<Color> bgColor = [primaryPromoColor, secondaryPromoColor];
  final String backgroundImagePath;
  final String imagePath;
  final String title;
  final String subTitle;
  final String tag;
  final String caption;
  final bool reverseGradient;

  const PromotionCard(
      {Key key,
      @required this.backgroundImagePath,
      this.imagePath,
      @required this.title,
      @required this.subTitle,
      this.tag,
      this.caption,
      this.reverseGradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 160,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
                offset: Offset.zero,
                color: Colors.black.withOpacity(.1),
                blurRadius: 15)
          ],
          gradient: LinearGradient(
              colors: reverseGradient != null && reverseGradient
                  ? bgColor.reversed.toList()
                  : bgColor,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          image: DecorationImage(
            image: AssetImage(this.backgroundImagePath),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          if (this.imagePath != null)
            Positioned(
              right: 0,
              bottom: 16,
              child: Image.asset(this.imagePath),
            ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
              ),
              Text(
                subTitle,
                style:
                    TextStyle(color: Colors.white, fontSize: 20, height: 1.5),
              ),
            ],
          ),
          Positioned(
              left: 0,
              bottom: 0,
              child: this.tag != null
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      decoration: BoxDecoration(
                          color: tagBackgroundColor,
                          borderRadius: BorderRadius.circular(.5)),
                      child: Text(
                        this.tag,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 14, height: 1.5),
                      ),
                    )
                  : Text(
                      this.caption,
                      style: const TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.white),
                    ))
        ],
      ),
    );
  }
}
