import 'package:flutter/material.dart';
import 'package:formadziri/pages/uploadphoto.dart';
import 'package:google_fonts/google_fonts.dart';

import '../comp/fields_profile.dart';
import '../pages/username.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

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
            child: InkWell(
              onTap: () {
                setState(() {});
                Navigator.pop(context);
              },
              child: Text(
                "Save",
                style: GoogleFonts.poppins(
                  color: const Color(0xAA0E1F12),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 14),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    userimage,
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: FilledButton.styleFrom(
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              backgroundColor:
                                  const Color.fromARGB(255, 207, 229, 205)),
                          onPressed: () {},
                          child: Text(
                            "Change Photo",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: const Color(0xAA0E1F12),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 0, left: 0),
              child: Text(
                "First name",
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            LoginField(
              controller: usernameController,
              hintText: usernameController.text,
              obscuredText: false,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 0, left: 0),
              child: Text(
                "Last name",
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            LoginField(
              controller: passwordController,
              hintText: passwordController.text,
              obscuredText: false,
            ),
            SizedBox(
              height: 10,
            ),
            get(),
          ]),
        ),
      ),
    );
  }

  Widget get() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),

      shrinkWrap: true,
      crossAxisCount: 4, // Number of columns in the grid
      crossAxisSpacing: 1, // Spacing between columns
      mainAxisSpacing: 1, // Spacing between rows
      padding: EdgeInsets.all(16), // Optional padding around the grid
      children: [
        for (String imag in imags)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    userimage = imag;
                    print(userimage);
                  });
                },
                child: Image.asset(imag)),
          )
      ],
    );
  }
}
