// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Model/Courses.dart';
import 'package:formadziri/BDD/Model/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:formadziri/categories/cat_comp.dart';

import 'course_column.dart';

class DesignCat extends StatefulWidget {
  const DesignCat({
    Key? key,
    required this.datacategorie,
  }) : super(key: key);
  final Category datacategorie;

  @override
  State<DesignCat> createState() => _DesignCatState();
}

class _DesignCatState extends State<DesignCat> {
  @override
  List<Course> filteredSubCategories = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredSubCategories = widget.datacategorie.subCategories![0].course!;
  }

  void _filterSubCategories(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredSubCategories = widget.datacategorie.subCategories![0].course!;
      } else {
        filteredSubCategories = widget.datacategorie.subCategories![0].course!
                ?.where((Course) =>
                    Course.title!.toLowerCase().contains(query.toLowerCase()))
                .toList() ??
            [];
      }
    });
  }

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
        title: Text(
          widget.datacategorie.name! + " in Formadziri",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                controller: searchController,
                onChanged: _filterSubCategories,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 14),
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: "Find courses in design",
                  hintStyle: TextStyle(color: Color(0xFF6D8A6B)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffCFE5CD),
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffCFE5CD),
                      width: 2,
                    ),
                  ),
                  fillColor: Color(0xffCFE5CD),
                  filled: true,
                ),
                cursorColor: Color.fromARGB(255, 109, 138, 107),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
            //   child: Text(
            //     "Featured courses",
            //     style: GoogleFonts.poppins(
            //       fontSize: 20,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // const CatComp(),

            Padding(
              padding: const EdgeInsets.only(left: 16, top: 4, right: 16),
              child: Text(
                "All courses",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            for (Course datasub in filteredSubCategories)
              CourseColumn(datasub: datasub),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
