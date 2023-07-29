import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PodItem extends StatefulWidget {
  const PodItem(
      {Key? key,
      required this.date,
      required this.title,
      required this.desc,
      required this.time})
      : super(key: key);

  final String date;
  final String title;
  final String desc;
  final String time;

  @override
  State<PodItem> createState() => _PodItemState();
}

class _PodItemState extends State<PodItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.date,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.desc,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: const Color(0xFF9BBB99),
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.play_circle_outline_rounded,
                            color: Color(0xFF9BBB99)),
                        const SizedBox(width: 4),
                        Text(
                          widget.time,
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF9BBB99),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: const Color(0xFF9BBB99),
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 26,
                      color: Color(0xFF9BBB99),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Color(0xFF9BBB99),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
