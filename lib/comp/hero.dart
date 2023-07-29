import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../categories/design_cat.dart';

class HeroSec extends StatelessWidget {
  const HeroSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.asset(
            "images/hero.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text("newcourses",
            //AppLocalizations.of(context).newcourses,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Goudy',
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Text("starting",
            //AppLocalizations.of(context).starting,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF93BD8F)),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return  DesignCat(); //
              //     },
              //   ),
              // );
            },
            child: Text("checkthem",
              //AppLocalizations.of(context).checkthem,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
