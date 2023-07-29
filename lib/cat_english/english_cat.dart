import 'package:flutter/material.dart';
import 'package:formadziri/cat_english/esp.dart';
import 'package:google_fonts/google_fonts.dart';

import 'english_column.dart';

class EnglishCat extends StatelessWidget {
  const EnglishCat({Key? key}) : super(key: key);

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
          "English in Formadziri",
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
                "Levels",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const EnglishColumn(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
              child: Text(
                "English for specific purposes",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Esp(
              image: "images/crs/41.png",
              title: "ESP for Engineering (requires B1 level)",
              price: "8000 DZD",
              icon: ("images/grp.png"),
            ),
            const Esp(
              image: "images/crs/41.png",
              title: "ESP for Engineering (requires B1 level)",
              price: "8000 DZD",
              icon: ("images/grp.png"),
            ),
            const Esp(
              image: "images/crs/41.png",
              title: "ESP for Engineering (requires B1 level)",
              price: "88000 DZD",
              icon: ("images/grp.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
              child: Text(
                "Test preparations",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "images/crs/41.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6,
                    ),
                    child: Text(
                      "IELTS test preparation",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "4000 DZD",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xFF9BBB99),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset(
                        "images/grp.png",
                        height: 12,
                        color: const Color(0xFF9BBB99),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4000 DZD",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
