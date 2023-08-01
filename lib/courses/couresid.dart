import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Controllers/AllGetdata.dart';
import 'package:formadziri/courses/course.dart';

import '../BDD/Model/Courses.dart';

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
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    final course = snapshot.data;
                    if (course == null || course.id == null) {
                      return const Center(child: Text('Course not found.'));
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
         
    
  

