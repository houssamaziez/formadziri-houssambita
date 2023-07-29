import 'package:flutter/material.dart';
import 'package:formadziri/comp/sign_button.dart';
import 'package:formadziri/pages/login.dart';

import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../comp/text_filed.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCheckboxChecked = false;

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final obscuredController = TextEditingController();

  final confirmpasswordController = TextEditingController();

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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("createanaccount",
                  // AppLocalizations.of(context).createanaccount,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: const Color.fromARGB(255, 109, 138, 107)),
                ),
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
                height: 15,
              ),
              LoginField(
                controller: confirmpasswordController,
                hintText: "confirmpassword",
                //AppLocalizations.of(context).confirmpassword,
                obscuredText: true,
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      activeColor: const Color(0xFF93BD8F),
                      value: isCheckboxChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckboxChecked = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Text("iagree",
                        // AppLocalizations.of(context).iagree,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 109, 138, 107),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SignButton(
                title: "signup",
                // AppLocalizations.of(context).signup,
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 15,
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
                      // AppLocalizations.of(context).or,
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
                  MaterialPageRoute(builder: (context) => LoginPage()),
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
                        text:"alreadyhaveanaccount" ,
                        // AppLocalizations.of(context).alreadyhaveanaccount,
                      ),
                      TextSpan(
                        text: "login",
                        // AppLocalizations.of(context).login,
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
