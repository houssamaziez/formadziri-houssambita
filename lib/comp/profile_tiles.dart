import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatefulWidget {
  const ProfileTile({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ProfileTile> createState() => _ProfileTileState();
}

class _ProfileTileState extends State<ProfileTile> {
  bool switchValue = false;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 26, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
