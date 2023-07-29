import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final String image, title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image(
          image: AssetImage(image),
        ),
        const SizedBox(
          height: 100,
        ),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Goudy',
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
