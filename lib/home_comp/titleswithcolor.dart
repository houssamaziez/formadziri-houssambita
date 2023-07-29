// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeColored extends StatelessWidget {
  const HomeColored({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              children: [
                const TextSpan(
                  text: "Courses in ",
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                    color: color,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextSpan(
                //   text: title1,
                //   style: const TextStyle(
                //     color: Color(0xFF826291),
                //     fontSize: 22,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
                // TextSpan(
                //   text: title2,
                //   style: const TextStyle(
                //     color: Color(0xFF4198FF),
                //     fontSize: 22,
                //     fontWeight: FontWeight.w700,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
