import 'package:flutter/material.dart';
import 'package:formadziri/pages/uploadphoto.dart';
import 'package:formadziri/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/fields_profile.dart';

final usernameController = TextEditingController();
final passwordController = TextEditingController();
final obscuredController = TextEditingController();

class UserName extends StatefulWidget {
  UserName({Key? key}) : super(key: key);

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 800,
            color: FormaColors.darkgreen,
            child: Column(
              children: [
                const SizedBox(
                  height: 34,
                ),
                Image.asset(
                  "images/login_logo.png",
                  height: 50,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        "What is your name?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: FormaColors.darkgreen),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                LoginField(
                  controller: usernameController,
                  hintText: "First name",
                  obscuredText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                LoginField(
                  controller: passwordController,
                  hintText: "Last name",
                  obscuredText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    if (usernameController.text != "" &&
                        passwordController.text != "") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return UploadPhoto(
                                name: usernameController.text +
                                    passwordController.text); //
                          },
                        ),
                      );
                    } else {
                      Get.snackbar("Error", "Complet",
                          backgroundColor: Colors.red.withOpacity(0.4));
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: const BoxDecoration(
                        color: FormaColors.lightgreen,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                        color: FormaColors.darktextgreen,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
