// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:formadziri/BDD/Model/TopCategorie.dart';
import 'package:formadziri/home_comp/ForData.dart';
import 'package:formadziri/home_comp/titleswithcolor.dart';

class Cat1 extends StatelessWidget {
  const Cat1({
    Key? key,
    required this.data,
  }) : super(key: key);
  final TopCategories data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeColored(
          title: data.title!.toString(),
          color: Color(int.parse(
              "0xFF${data.color!.replaceFirst('#', '')}".substring(2),
              radix: 16)),
        ),
        data.category!.subCategories!.isEmpty
            ? Container()
            : Fordata(
                datacoursList: data.category!.subCategories![0].course!,
                title: data.category!.name!),
      ],
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     HomeColored(
    //       title: data.title!.toString(),
    //       color: Color(int.parse(
    //           "0xFF${data.color!.replaceFirst('#', '')}".substring(2),
    //           radix: 16)),
    //     ),
    //     // SingleChildScrollView(
    //     //   scrollDirection: Axis.horizontal,
    //     //   child: Padding(
    //     //     padding: const EdgeInsets.only(right: 16),
    //     //     child: Wrap(
    //     //       children: [
    //     //         Row(
    //     //           crossAxisAlignment: CrossAxisAlignment.start,
    //     //           children: [
    //     //             for (SubCategories datatop in data.category!.subCategories!)
    //     //               InkWell(
    //     //                 onTap: () {
    //     //                   Navigator.push(
    //     //                     context,
    //     //                     MaterialPageRoute(
    //     //                       builder: (context) => CourseEx(
    //     //                         idsubcategorie: datatop.id!,
    //     //                       ),
    //     //                     ),
    //     //                   );
    //     //                 },
    //     //                 child: CourseCard(
    //     //                   image:
    //     //                       "https://formadziri-admin.com/${datatop.image!}",
    //     //                   title: datatop.name!,
    //     //                   price: datatop.status.toString(),
    //     //                   icon: "https://formadziri-admin.com/${datatop.icon!}",
    //     //                 ),
    //     //               ),
    //     //           ],
    //     //         ),
    //     //       ],
    //     //     ),
    //     //   ),
    //     // ),
    //     // ForTeachers(
    //     //     title: data..data![1].category!.name!,
    //     //     datact: snapshot.data![1].category!.subCategories!.first),

    //   ],
    // );
  }
}

/* CatCard(
                    image: "images/crs/11.png",
                    title:
                        "Adobe Photoshop CC: Beginner To Advanced Training Course",
                    price: "2000 DZD",
                    icon: "images/grp.png"),
                CatCard(
                    image: "images/crs/12.png",
                    title: "Introduction to 3D sculpting in Blender",
                    price: "2000 DZD",
                    icon: "images/grp.png"),
                CatCard(
                    image: "images/crs/13.png",
                    title: "The Complete Graphic Design Theory Course",
                    price: "4000 DZD",
                    icon: "images/indi.png"),*/
