import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 0, right: 16),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
