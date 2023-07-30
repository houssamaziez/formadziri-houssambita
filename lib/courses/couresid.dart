import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Controllers/test2.dart';
import 'package:formadziri/courses/course.dart';

import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BDD/Controllers/CourseExController.dart';
import '../BDD/Model/Courses.dart';
import '../payment/payment.dart';

class CourseID extends StatelessWidget {
  const CourseID({
    Key? key,
    required this.idsubcategorie,
  }) : super(key: key);
  final int idsubcategorie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: true,
            child: FutureBuilder<Course?>(
                future: GetDattApi().getcoursBYId(idsubcategorie),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    final course = snapshot.data;
                    if (course == null || course.id == null) {
                      return Center(child: Text('Course not found.'));
                    } else {
                      return CourseEx(
                        course: course,
                      );
                    }
                  }
                })));
  }
}
                //return Container();
         
    
  

