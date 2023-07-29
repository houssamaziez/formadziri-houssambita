import 'package:flutter/material.dart';
import 'package:formadziri/comp/sign_button.dart';
import 'package:formadziri/comp/text_filed.dart';
import 'package:formadziri/pages/passwordreset.dart';
import 'package:formadziri/pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../mainpages/bottom_bar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final obscuredController = TextEditingController();

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
              color: const Color(0xFF6D8A6B),
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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("welcomeback",
                      //AppLocalizations.of(context).welcomeback,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: const Color.fromARGB(255, 109, 138, 107)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NavBar()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Skip",
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              LoginField(
                controller: usernameController,
                hintText: "email",
                //AppLocalizations.of(context).email,
                obscuredText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              LoginField(
                controller: passwordController,
                hintText: "password",
                //AppLocalizations.of(context).password,
                obscuredText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              SignButton(
                title: "login",
                //AppLocalizations.of(context).login,
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PassReset()),
                  );
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("forgotpassword",
                    //AppLocalizations.of(context).forgotpassword,
                    style: GoogleFonts.poppins(
                      color: const Color(0xAA0E1F12),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xAA0E1F12),
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or",
                      //AppLocalizations.of(context).or,
                      style: GoogleFonts.poppins(
                        color: const Color(0xAA0E1F12),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xAA0E1F12),
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFCFE5CD),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        width: 2.5,
                        color: const Color(0xFFCFE5CD),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "images/google.png",
                      height: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFCFE5CD),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        width: 2.5,
                        color: const Color(0xFFCFE5CD),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "images/facebook.png",
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),

            /*
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 36, 78, 47),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  children: const [
                    TextSpan(
                      text: "By signing up you agree to our ",
                    ),
                    TextSpan(
                      text: "Terms of Service ",
                      style: TextStyle(
                        color: Color(0xFF93BD8F),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 36, 78, 47),
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: TextStyle(
                        color: Color(0xFF93BD8F),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF244E2F),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "donthaveanaccount",
                        //AppLocalizations.of(context).donthaveanaccount,
                      ),
                      TextSpan(
                        text: "signup",
                        //AppLocalizations.of(context).signup,
                        style: const TextStyle(
                          color: Color(0xFF93BD8F),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
