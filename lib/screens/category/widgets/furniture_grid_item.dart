import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_shop/constant/constant.dart';
import 'package:furniture_shop/models/item.dart';

class FurnitureGridItem extends StatelessWidget {
  final Item item;
  final EdgeInsets margin;

  const FurnitureGridItem({Key key, @required this.item, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.zero : margin,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.05),
                offset: Offset.zero,
                blurRadius: 15),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 37),
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(item.imagePath),
                    ),
                  ),
                ),
                if (item.discountPercent != null)
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: primaryColor, shape: BoxShape.circle),
                      child: Text(
                        "${item.discountPercent}%",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style:
                      TextStyle(color: Colors.black, fontSize: 13, height: 1.5),
                ),
                Wrap(
                  spacing: 3,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "${Item.format(item.price)}",
                      style: TextStyle(
                          fontSize: 18, color: primaryColor, height: 1.5),
                    ),
                    if (item.discountPercent != null)
                      Text(
                        "${Item.format(item.originalPrice)}",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black38,
                        ),
                      )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: item.rating,
                        minRating: 1,
                        itemSize: 12,
                        ignoreGestures: true,
                        allowHalfRating: true,
                        itemCount: 5,
                        unratedColor: Colors.amber[100],
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          size: 2,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) => print(rating),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${item.rating}",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
