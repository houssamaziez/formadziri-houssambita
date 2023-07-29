// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Model/Courses.dart';


import 'package:formadziri/home_comp/course_card.dart';

import '../courses/course.dart';


class CourseColumn extends StatelessWidget {
  const CourseColumn({
    Key? key,
    required this.datasub,
  }) : super(key: key);
  final Course datasub;
  @override
  Widget build(BuildContext context) {
    if (datasub == null ) {
      
      return Container();
    }
    return Padding(
      
      padding: const EdgeInsets.only(right: 4),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  CourseEx(course: datasub); //
                  },
                ),
              );
            },
            child:  CourseCard(
        icon: "https://formadziri-admin.com/${datasub.image!}",
        image: "https://formadziri-admin.com/${datasub.image!}",
        title: datasub.title!,
        price: datasub.status.toString(),
        
      )
    


          ),

          // "Illustrator 2020 Masterclass: From Beginner to Advanced"
          // const CouseColumnComp(
          //   image: "images/crs/32.png",
          //   title: "Illustrator 2020 Masterclass: From Beginner to Advanced",
          //   price: "6000 DZD",
          //   icon: ("images/indi.png"),
          // ),
          // const CouseColumnComp(
          //   image: "images/crs/33.png",
          //   title: "Illustrator 2020 Masterclass: From Beginner to Advanced",
          //   price: "4000 DZD",
          //   icon: ("images/grp.png"),
          // ),
          // const CouseColumnComp(
          //   image: "images/crs/31.png",
          //   title: "Illustrator 2020 Masterclass: From Beginner to Advanced",
          //   price: "4000 DZD",
          //   icon: ("images/grp.png"),
          // ),
          // const CouseColumnComp(
          //   image: "images/crs/32.png",
          //   title: "Illustrator 2020 Masterclass: From Beginner to Advanced",
          //   price: "4000 DZD",
          //   icon: ("images/grp.png"),
          // ),
          // const CouseColumnComp(
          //   image: "images/crs/33.png",
          //   title: "Illustrator 2020 Masterclass: From Beginner to Advanced",
          //   price: "4000 DZD",
          //   icon: ("images/grp.png"),
          // ),
        ],
      ),
    );
  }
}
