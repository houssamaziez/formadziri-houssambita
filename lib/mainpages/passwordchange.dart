import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/fields_profile.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFCFE5CD),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded,
              color: Color(0xAA0E1F12)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14, left: 14),
            child: Text(
              "Save",
              style: GoogleFonts.poppins(
                color: const Color(0xAA0E1F12),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 0, left: 0),
            child: Text(
              "Old password",
              style: GoogleFonts.poppins(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          LoginField(
            controller: emailController,
            hintText: "",
            obscuredText: false,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 0, left: 0),
            child: Text(
              "New password",
              style: GoogleFonts.poppins(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          LoginField(
            controller: passwordController,
            hintText: "",
            obscuredText: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 0, left: 0),
            child: Text(
              "Confirm password",
              style: GoogleFonts.poppins(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          LoginField(
            controller: passwordController,
            hintText: "",
            obscuredText: true,
          ),
        ]),
      ),
    );
  }
}
