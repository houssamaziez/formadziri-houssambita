import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BDD/Controllers/CourseExController.dart';
import '../BDD/Model/Courses.dart';
import '../payment/payment.dart';

class CourseEx extends StatefulWidget {
  const CourseEx({
    Key? key,
    required this.course,
  }) : super(key: key);
  final Course course;

  @override
  State<CourseEx> createState() => _CourseExState();
}

class _CourseExState extends State<CourseEx> {
  final controllerCoursex = Get.put(CourseEXController());
  late Course course;

  @override
  void initState() {
    super.initState();
    course = widget.course;
  }

  @override
  Widget build(BuildContext context) {
    List<String> courseForList =
        List<String>.from(json.decode(course.courseFor!));
    List<String> whatToLearn =
        List<String>.from(json.decode(course.whatToLearn!));
    List<String> requirments =
        List<String>.from(json.decode(course.requirments!));
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xFF93BD8F),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 14, left: 14),
              child: Icon(Icons.share, color: Color(0xFF93BD8F)),
            )
          ],
        ),
        body: SafeArea(
            bottom: true,
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 18, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://formadziri-admin.com/${course.image!}",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      course.title!,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    course.description!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GetBuilder<CourseEXController>(
                            init: CourseEXController(),
                            builder: (cont) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      foregroundColor: Colors.white,
                                      side: BorderSide(
                                        color: cont.groupindex != 0
                                            ? Color(0xFF93BD8F)
                                            : Colors.white,
                                        width: 2,
                                      ),
                                      backgroundColor: cont.groupindex == 0
                                          ? const Color(0xFF93BD8F)
                                          : Colors.white,
                                    ),
                                    onPressed: () {
                                      cont.change(0);
                                    },
                                    child: Text(
                                      "Group",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: cont.groupindex != 0
                                            ? const Color(0xFF93BD8F)
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  // OutlinedButton(
                                  //   style: OutlinedButton.styleFrom(
                                  //     padding: const EdgeInsets.only(
                                  //         left: 16, right: 16),
                                  //     side: const BorderSide(
                                  //       color: Color(0xFF93BD8F),
                                  //       width: 2,
                                  //     ),
                                  //   ),
                                  //   onPressed: () {},
                                  //   child: Text(
                                  //     "Mini group",
                                  //     style: GoogleFonts.poppins(
                                  //       fontSize: 15,
                                  //       color: FormaColors.mediumgreen,
                                  //       fontWeight: FontWeight.w500,
                                  //     ),
                                  //   ),
                                  // ),

                                  const SizedBox(
                                    width: 6,
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                      side: BorderSide(
                                        color: cont.groupindex != 1
                                            ? Color(0xFF93BD8F)
                                            : Colors.white,
                                        width: 2,
                                      ),
                                      backgroundColor: cont.groupindex == 1
                                          ? const Color(0xFF93BD8F)
                                          : Colors.white,
                                    ),
                                    onPressed: () {
                                      cont.change(1);
                                    },
                                    child: Text(
                                      "Individual",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: cont.groupindex != 1
                                            ? const Color(0xFF93BD8F)
                                            : Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: Color(0xAA0E1F12),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        course.durationWeeks!.toString() + " weeks",
                        style: GoogleFonts.poppins(
                          color: const Color(0xAA0E1F12),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 8),
                    child: GetBuilder<CourseEXController>(
                        init: CourseEXController(),
                        builder: (cont) {
                          return Text(
                            cont.groupindex == 0
                                ? course.priceGroup!.toString() + " DZD"
                                : course.priceIndividual!.toString() + " DZD",
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              color: const Color(0xFF93BD8F),
                              fontWeight: FontWeight.w800,
                            ),
                          );
                        }),
                  ),
                  GetBuilder<CourseEXController>(
                      init: CourseEXController(),
                      builder: (cont) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Payment(
                                    data: course,
                                    price: cont.groupindex == 0
                                        ? course.priceGroup!.toString()
                                        : course.priceIndividual!.toString(),
                                    goupe: cont.groupindex == 0
                                        ? "Group".toString()
                                        : "Individual".toString(),
                                  ); //
                                },
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(18),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 207, 229, 205),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              "Choose timing and book",
                              style: GoogleFonts.poppins(
                                color: const Color(0xAA0E1F12),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 207, 229, 205),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: Checkbox.width,
                              backgroundColor:
                                  Color.fromARGB(255, 207, 229, 205),
                              child: Icon(Icons.more_time_rounded,
                                  color: Color(0xAA0E1F12)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 hours per week of an online\n interractive classroom.",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: Checkbox.width,
                              backgroundColor:
                                  Color.fromARGB(255, 207, 229, 205),
                              child: Icon(Icons.download_done_rounded,
                                  color: Color(0xAA0E1F12)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "117 downloadable resources.",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: Checkbox.width,
                              backgroundColor:
                                  Color.fromARGB(255, 207, 229, 205),
                              child: Icon(Icons.article_outlined,
                                  color: Color(0xAA0E1F12)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "16 Articles",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: Checkbox.width,
                              backgroundColor:
                                  Color.fromARGB(255, 207, 229, 205),
                              child: Icon(Icons.devices_other_rounded,
                                  color: Color(0xAA0E1F12)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Access on mobile, desktop.",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      "Who this course is for?",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: courseForList.map((item) {
                      item = "• $item";

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          item,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      "What you’ll learn",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: whatToLearn.map((item) {
                      item = " ✓$item";

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          item,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      "Curriculum",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    course.curriculum!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      "Requirements",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "• Internet Access.",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: requirments.map((item) {
                      item = "• $item";

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          item,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Text(
                        "Teacher",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 207, 229, 205),
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.network(
                            "https://formadziri-admin.com/${course.teacher!.user!.image!}",
                            height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Text(
                          course.teacher!.user!.firstname! +
                              course.teacher!.user!.lastname!,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          course.teacher!.bio!,
                          //"I'm a ESL trainer and a qualified TEFL/TESOL teacher with Business English specialisation. For the last 3 years, I've been teaching English courses in Algeria.  In addition to teaching general and Business English to adults at all levels, I've also been teaching exam preparation classes for BEC Higher (C1) and BEC Vantage (B2). My students pass the exam. This has the disadvantage of being geographically limiting. I'm really excited to be able to offer these courses online now and help many more people improve their English language skills and help them to pass these important exams. Other subjects that I enjoy are music and technology.",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ))));
  }
}
                //return Container();
         
    
  

