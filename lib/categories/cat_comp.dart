import 'package:flutter/material.dart';
import 'package:formadziri/categories/cate_card_large.dart';



class CatComp extends StatefulWidget {
  const CatComp({Key? key}) : super(key: key);

  @override
  State<CatComp> createState() => _CatCompState();
}

class _CatCompState extends State<CatComp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   // context,
                    //   // MaterialPageRoute(
                    //   //   builder: (context) {
                    //   //     return const CourseEx(); //
                    //   //   },
                    //   // ),
                    // );
                  },
                  child: const CatCardLarge(
                    image: "images/crs/31.png",
                    title: "UI/UX design Theory - A complete Course",
                    price: "5000 DZD",
                    icon: ("images/grp.png"),
                  ),
                ),
                const CatCardLarge(
                  image: "images/crs/32.png",
                  title:
                      "Photoshop Master Course : From Beginner to Professional",
                  price: "4500 DZD",
                  icon: ("images/grp.png"),
                ),
                const CatCardLarge(
                    image: "images/crs/33.png",
                    title:
                        "User Experience (UX): The Ultimate Guide to Usability and UX",
                    price: "6000 DZD",
                    icon: ("images/grp.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
