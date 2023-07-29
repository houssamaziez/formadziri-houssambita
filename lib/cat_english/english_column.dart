import 'package:flutter/material.dart';

import 'english_column_comp.dart';

class EnglishColumn extends StatelessWidget {
  const EnglishColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 4),
      child: Column(
        children: [
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level A1 English\n(Beginner/Elementary)",
            price: "4000 DZD",
            icon: ("images/grp.png"),
          ),
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level A2 English\n(Pre Intermediate)",
            price: "6000 DZD",
            icon: ("images/indi.png"),
          ),
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level B1 English\n(Intermediate)",
            price: "4000 DZD",
            icon: ("images/grp.png"),
          ),
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level B2 English\n(Upper Intermediate)",
            price: "4000 DZD",
            icon: ("images/grp.png"),
          ),
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level C1 English\n(Advanced)",
            price: "4000 DZD",
            icon: ("images/grp.png"),
          ),
          EnglishColumnComp(
            image: "images/crs/41.png",
            title: "Level C2 English\n(Proficient)",
            price: "4000 DZD",
            icon: ("images/grp.png"),
          ),
        ],
      ),
    );
  }
}
