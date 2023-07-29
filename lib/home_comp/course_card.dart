import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:formadziri/mainpages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCard extends StatelessWidget {
  const CourseCard(
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
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl:
                  image, // Assuming 'image' is the URL of the image you want to load.
              width: 200,
              height: 110,
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(
                  child:
                      WaitImage()), // Optional: Show a placeholder while loading.
              errorWidget: (context, url, error) => Icon(Icons
                  .error), // Optional: Show an error icon if the image fails to load.
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 200,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
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
                  fontSize: 16,
                  color: const Color(0xFF9BBB99),
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Image.network(
                image,
                height: 12,
                color: const Color(0xFF9BBB99),
              )
            ],
          )
        ],
      ),
    );
  }
}
