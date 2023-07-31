import 'dart:io';
import 'package:flutter/material.dart';
import 'package:formadziri/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../mainpages/bottom_bar.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key, this.name}) : super(key: key);
  final name;
  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  Future<void> _getImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      print(image!.path);
      userimageasset = image.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 800,
            color: const Color(0xFF6D8A6B),
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
          // Center(
          //   child: Container(
          //       height: 140,
          //       width: 140,
          //       decoration: userimage == ""
          //           ? BoxDecoration(
          //               color: Color(0xFFCFE5CD),
          //               borderRadius: BorderRadius.all(Radius.circular(100)),
          //             )
          //           : BoxDecoration(
          //               color: Color(0xFFCFE5CD),
          //               borderRadius: BorderRadius.all(Radius.circular(100)),
          //               image: DecorationImage(image: AssetImage(userimage))),
          //       child: userimage == ""
          //           ? const Icon(
          //               Icons.camera_alt_rounded,
          //               size: (45),
          //               color: FormaColors.mediumgreen,
          //             )
          //           : Container()),
          // ),
          Center(
            child: Container(
              height: 140,
              width: 140,
              decoration: userimage == null
                  ? BoxDecoration(
                      color: Color(0xFFCFE5CD),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    )
                  : BoxDecoration(
                      color: Color(0xFFCFE5CD),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      image: DecorationImage(
                        image: userimageasset != ""
                            ? FileImage(File(userimageasset))
                                as ImageProvider<Object>
                            : AssetImage(File(userimage).path),
                        fit: BoxFit.cover,
                      ),
                    ),
              child: userimage == null
                  ? Icon(
                      Icons.camera_alt_rounded,
                      size: (45),
                      color: Colors.green,
                    )
                  : Container(),
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 10, bottom: 10),
                backgroundColor: const Color(0xFFCFE5CD)),
            onPressed: () {
              _getImage();
            },
            child: Text(
              "Upload a photo",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: FormaColors.mediumgreen,
                fontWeight: FontWeight.w700,
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
                  color: Color(0xFF93BD8F),
                  thickness: 2,
                  height: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Or choose an avatar",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF93BD8F),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFF93BD8F),
                        height: 2,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          get(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NavBar(); //
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                    color: Color(0xFFCFE5CD),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                alignment: AlignmentDirectional.center,
                child: Text(
                  "Next",
                  style: GoogleFonts.poppins(
                    color: const Color(0xAA0E1F12),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 26)
        ],
      ),
    );
  }

  Widget get() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      padding: EdgeInsets.all(16),
      children: [
        for (String imag in imags)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    userimage = imag;
                    userimageasset = "";
                    print(userimage);
                  });
                },
                child: Image.asset(imag)),
          )
      ],
    );
  }
}

List<String> imags = [
  "images/avatars/1.png",
  "images/avatars/2.png",
  "images/avatars/3.png",
  "images/avatars/4.png",
  "images/avatars/5.png",
  "images/avatars/6.png",
  "images/avatars/7.png",
  "images/avatars/8.png",
  "images/avatars/9.png",
  "images/avatars/10.png",
  "images/avatars/11.png",
  "images/avatars/12.png",
];
String userimage = "images/avatars/1.png";
String userimageasset = "";
