import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedList extends StatelessWidget {
  const SavedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: const Text("Saved Podcasts",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded,
              color: Color(0xFF93BD8F)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "31 Aug",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Episode 06: Language barrier: a big misunderstanding?",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Overcome language learning barriers by targeting professional vocabulary, explored in this episode.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
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
                                  "21 min",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF9BBB99),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(width: 4),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: const Color(0xFF9BBB99),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              border: Border.all(
                                color: const Color(0xFF9BBB99),
                                width: 0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    border: Border.all(
                                      color: const Color(0xFF9BBB99),
                                      width: 0,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.check_rounded,
                                    size: 26,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.more_vert_rounded,
                            color: Color(0xFF9BBB99),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "31 Aug",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Episode 06: Language barrier: a big misunderstanding?",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Overcome language learning barriers by targeting professional vocabulary, explored in this episode.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
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
                                  "21 min",
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF9BBB99),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(width: 4),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: const Color(0xFF9BBB99),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              border: Border.all(
                                color: const Color(0xFF9BBB99),
                                width: 0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    border: Border.all(
                                      color: const Color(0xFF9BBB99),
                                      width: 0,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.check_rounded,
                                    size: 26,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.more_vert_rounded,
                            color: Color(0xFF9BBB99),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
