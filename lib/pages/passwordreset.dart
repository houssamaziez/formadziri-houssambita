import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../comp/fields_profile.dart';
import 'emailsent.dart';

class PassReset extends StatefulWidget {
  const PassReset({Key? key}) : super(key: key);

  @override
  State<PassReset> createState() => _PassResetState();
}

class _PassResetState extends State<PassReset> {
  final emailController = TextEditingController();

  final usernameController = TextEditingController();

  void signUserIn() {}
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
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("resetyourpassword",
                    //AppLocalizations.of(context).resetyourpassword,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: const Color.fromARGB(255, 109, 138, 107)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LoginField(
                    controller: emailController,
                    hintText: "email",
                    // AppLocalizations.of(context).email,
                    obscuredText: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ConfirmationEmail(); //
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 207, 229, 205),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text("send",
                        // AppLocalizations.of(context).send,
                        style: GoogleFonts.poppins(
                          color: const Color(0xAA0E1F12),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
