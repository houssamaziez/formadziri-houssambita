import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignButton extends StatelessWidget {
  final Function()? onTap;
  final String title;

  const SignButton({Key? key, required this.onTap, required this.title})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.all(17),
          decoration: const BoxDecoration(
              color: Color(0xFFCFE5CD),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          alignment: AlignmentDirectional.center,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xAA0E1F12),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
