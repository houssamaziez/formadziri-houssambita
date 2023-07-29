import 'package:flutter/material.dart';
import 'package:formadziri/home_comp/course_card.dart';

import '../BDD/Model/Courses.dart';

import '../courses/course.dart';

class Fordata extends StatelessWidget {
  const Fordata({Key? key, required this.datacoursList, required this.title})
      : super(key: key);
  final List<Course> datacoursList;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Wrap(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (Course data in datacoursList)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CourseEx(
                                course: data,
                              ),
                            ),
                          );
                        },
                        child: CourseCard(
                          icon: "https://formadziri-admin.com/${data.image!}",
                          image: "https://formadziri-admin.com/${data.image!}",
                          title: data.title!,
                          price: data.priceGroup!.toString(),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
