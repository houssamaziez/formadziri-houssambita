import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Controllers/test2.dart';

import 'package:formadziri/BDD/Model/home.dart';

import 'package:google_fonts/google_fonts.dart';

import '../categories/design_cat.dart';

class CategoriesWrap extends StatefulWidget {
  const CategoriesWrap({Key? key}) : super(key: key);

  @override
  State<CategoriesWrap> createState() => _CategoriesWrapState();
}

class _CategoriesWrapState extends State<CategoriesWrap> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: GetDattApi().getCategorie(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (var category in til)
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Color(0xFF93BD8F),
                                width: 2,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              category,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0xFF93BD8F),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          List<Category> categories = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        for (var category in categories)
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Color(0xFF93BD8F),
                                  width: 2,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DesignCat(
                                        datacategorie: category,
                                      ); //
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                category.name!,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Color(0xFF93BD8F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

List til = [
  "............",
  ".....",
  ".........",
  "..... ",
  "...",
];




//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 0, right: 0),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 16, right: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return const DesignCat(); //
//                           },
//                         ),
//                       );
//                     },
//                     child: Text(
//                       "Design",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Languages",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Programming",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Business",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Video Editing",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Health",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Photography",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Marketing",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "IELETS",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return const BACCat(); //
//                           },
//                         ),
//                       );
//                     },
//                     child: Text(
//                       "BAC Prep",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "TCF",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   OutlinedButton(
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(
//                         color: Color(0xFF93BD8F),
//                         width: 2,
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Graphic Design",
//                       style: GoogleFonts.poppins(
//                         fontSize: 18,
//                         color: const Color(0xFF93BD8F),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
