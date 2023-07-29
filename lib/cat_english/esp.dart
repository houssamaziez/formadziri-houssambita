import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Esp extends StatelessWidget {
  const Esp(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.icon})
      : super(key: key);

  final String image;
  final String title;
  final String price;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 8, right: 14),
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
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xFF9BBB99),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      icon,
                      height: 10,
                      color: const Color(0xFF9BBB99),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
