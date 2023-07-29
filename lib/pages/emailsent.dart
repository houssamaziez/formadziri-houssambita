import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmationEmail extends StatefulWidget {
  const ConfirmationEmail({Key? key}) : super(key: key);

  @override
  State<ConfirmationEmail> createState() => _ConfirmationEmailState();
}

class _ConfirmationEmailState extends State<ConfirmationEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              height: 100,
              color: const Color.fromARGB(255, 109, 138, 107),
              child: Column(
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  Image.asset(
                    "images/login_logo.png",
                  ),
                ],
              ),
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "images/email.png",
                height: 100,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text("anemailhasbeensentto",
              //AppLocalizations.of(context).anemailhasbeensentto,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "aminemerdaoui1@gmail.com",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
