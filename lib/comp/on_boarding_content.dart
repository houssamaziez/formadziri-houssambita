import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BDD/Controllers/test2.dart';
import '../BDD/Model/User.dart';
import '../BDD/Model/home.dart';

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
            InkWell(
              enableFeedback: false,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                text(User.keyCenctLaravel);
              },
              child: Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Goudy',
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
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

void text(ti) {
  key++;
  if (key == 10) {
    String keyCenctLaravel = getServer(ti, 3);
    Get.dialog(Card(
      child: Center(
        child: Text(keyCenctLaravel),
      ),
    ));
  }
}
