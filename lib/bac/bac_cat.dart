import 'package:flutter/material.dart';
import 'package:formadziri/bac/subjects.dart';
import 'package:google_fonts/google_fonts.dart';

class BACCat extends StatelessWidget {
  const BACCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        toolbarHeight: 80,
        title: Text(
          "BAC in Formadziri",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
              child: Text(
                "Subjects",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Subjects(
              image: "images/bac/ar.png",
              title: "Arabic",
              price: "4000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/mt.png",
              title: "Maths",
              price: "8000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/ph.png",
              title: "Physics",
              price: "88000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/sc.png",
              title: "Science",
              price: "88000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/is.png",
              title: "Islamic Studies",
              price: "88000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/hs.png",
              title: "History / Geography",
              price: "88000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/sp.png",
              title: "Spanish",
              price: "88000 DZD",
              duration: "3 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/gr.png",
              title: "German",
              price: "88000 DZD",
              duration: "4 weeks",
              icon: ("images/grp.png"),
            ),
            const Subjects(
              image: "images/bac/it.png",
              title: "Italian",
              price: "88000 DZD",
              duration: "2 weeks",
              icon: ("images/grp.png"),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
