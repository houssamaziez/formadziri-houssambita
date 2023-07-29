import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/on_boarding.dart';

class WideButton extends StatelessWidget {
  const WideButton({Key? key, required this.text, required this.ontap})
      : super(key: key);

  final String text;
  final String ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OnBoarding(); //
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 207, 229, 205),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        alignment: AlignmentDirectional.center,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: const Color(0xAA0E1F12),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
