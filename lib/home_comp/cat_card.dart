import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatCard extends StatelessWidget {
  const CatCard(
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
      padding: const EdgeInsets.only(left: 20, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 200,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 180,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontSize: 14,
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
    );
  }
}
