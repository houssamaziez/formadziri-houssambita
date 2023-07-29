import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'on_boarding.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/intro.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontFamily: 'Goudy',
                    ),
                    children: [
                      TextSpan(
                        text: "adduptoyourself",
                        //AppLocalizations.of(context).adduptoyourself, //
                      ),
                      const TextSpan(
                        text: ".",
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 229, 205),
                          fontSize: 80,
                          fontFamily: 'Goudy',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text("intro",
                 // AppLocalizations.of(context).intro,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  height: 120,
                ),
                GestureDetector(
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
                    child: Text("getStarted",
                      //AppLocalizations.of(context).getStarted,
                      style: GoogleFonts.poppins(
                        color: const Color(0xAA0E1F12),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
