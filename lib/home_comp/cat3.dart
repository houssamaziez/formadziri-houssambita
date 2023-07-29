import 'package:flutter/material.dart';

import '../comp/cat_card.dart';

class Cat3 extends StatelessWidget {
  const Cat3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatCard(
                    image: "images/crs/31.png",
                    title: "3D Animation Basics: Using ZBrush",
                    price: "3000 DZD",
                    icon: "images/grp.png"),
                CatCard(
                    image: "images/crs/32.png",
                    title: "Character Modeling and Animation",
                    price: "5000 DZD",
                    icon: "images/indi.png"),
                CatCard(
                    image: "images/crs/33.png",
                    title: "Introduction To Blender and 3D brushes",
                    price: "3000 DZD",
                    icon: "images/indi.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
