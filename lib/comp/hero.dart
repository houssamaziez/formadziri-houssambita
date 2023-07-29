import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../BDD/Controllers/test2.dart';

class HeroSec extends StatefulWidget {
  HeroSec({Key? key}) : super(key: key);

  @override
  State<HeroSec> createState() => _HeroSecState();
}

class _HeroSecState extends State<HeroSec> {
  final CourseBloc _courseBloc = CourseBloc();

  @override
  void initState() {
    super.initState();
    _courseBloc.fetchCourse();
  }

  @override
  void dispose() {
    _courseBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: waitdataNewoCores(),
    );
  }

  StreamBuilder<Coursefirebase> newMethod() {
    return StreamBuilder<Coursefirebase>(
      stream: _courseBloc.courseStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return waitdataNewoCores();
        } else if (snapshot.hasData) {
          Coursefirebase course = snapshot.data!;
          return Container();
          // return Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Image.network(course.image),
          //     SizedBox(height: 20),
          //     Text(
          //       course.name,
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //     ),
          //     SizedBox(height: 20),
          //     Text("Course ID: ${course.id}"),
          //   ],
          // );
        } else {
          return Center(
            child: Text("Failed to fetch course data."),
          );
        }
      },
    );
  }
}

Column waitdataNewoCores() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        child: Image.asset(
          "images/hero.png",
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Text(
          "newcourses",
          //AppLocalizations.of(context).newcourses,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Goudy',
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Text(
          "starting",
          //AppLocalizations.of(context).starting,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: FilledButton(
          style:
              FilledButton.styleFrom(backgroundColor: const Color(0xFF93BD8F)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return  DesignCat(); //
            //     },
            //   ),
            // );
          },
          child: Text(
            "checkthem",
            //AppLocalizations.of(context).checkthem,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  );
}
