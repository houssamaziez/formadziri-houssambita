import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subjects extends StatelessWidget {
  const Subjects(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.icon,
      required this.duration})
      : super(key: key);

  final String image;
  final String title;
  final String price;
  final String icon;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              image,
              width: 145,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.more_time_rounded, color: Colors.black),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      duration,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color(0xFF9BBB99),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      icon,
                      height: 12,
                      color: const Color(0xFF9BBB99),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
