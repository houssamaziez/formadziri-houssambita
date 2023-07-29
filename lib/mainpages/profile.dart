import 'package:flutter/material.dart';
import 'package:formadziri/mainpages/editprofile.dart';
import 'package:formadziri/mainpages/languageselect.dart';
import 'package:formadziri/pages/uploadphoto.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../pages/username.dart';
import '../podcast/savedpodcasts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

bool switchValue = false;
bool value = false;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFCFE5CD),
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const EditProfile(); //
                },
              ),
            );
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  onPressed: (() {}),
                  icon: Image.asset(
                    userimage,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF4A4A4A),
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "${usernameController.text + " " + passwordController.text}\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: "editprofile",
                      //AppLocalizations.of(context).editprofile,
                      style: const TextStyle(
                        color: Color(0xAA0E1F12),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8, right: 20),
            child: Text(
              "notifications",
              //AppLocalizations.of(context).notifications,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE4F2E2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 12, bottom: 16, top: 16, right: 12),
                    child: Text(
                      "appnotifications",
                      //AppLocalizations.of(context).appnotifications,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4, left: 4),
                    child: Transform.scale(
                      scale: 0.80,
                      child: Switch(
                        activeColor: const Color(0xAA0E1F12),
                        activeTrackColor: const Color(0xFF9BBB99),
                        value: value,
                        onChanged: (bool newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 8, top: 8, right: 20),
            child: Text(
              "language",
              //AppLocalizations.of(context).language,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LanguageSelect(); //
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE4F2E2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        bottom: 16,
                        top: 16,
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/eng.png",
                              height: 26,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              "English",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(right: 12, left: 12),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF6D8A6B),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 8, top: 8, right: 20),
            child: Text(
              "podcasts",
              //AppLocalizations.of(context).podcasts,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SavedPodcasts(); //
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE4F2E2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, bottom: 16, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "savedpodcasts",
                        // AppLocalizations.of(context).savedpodcasts,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF6D8A6B),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 8, top: 8, right: 20),
            child: Text(
              "about",
              //AppLocalizations.of(context).about,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFE4F2E2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "faq",
                          //AppLocalizations.of(context).faq,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF6D8A6B),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, left: 12, right: 12),
                      child: Divider(color: Colors.black12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12, bottom: 18, right: 12),
                        child: Row(
                          children: [
                            InkWell(
                              overlayColor: const MaterialStatePropertyAll(
                                  Colors.transparent),
                              onTap: () {
                                Share.share(
                                    "I'm learning with Formadziri app, you should too 👀");
                              },
                              child: Text(
                                "sharetheapp",
                                //AppLocalizations.of(context).sharetheapp,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 22, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.scale(
                  scale: 0.88,
                ),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*
                Text(
                  AppLocalizations.of(context).logout,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF9BBB99),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),*/
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Formadziri v1.0",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
