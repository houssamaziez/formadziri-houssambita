import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formadziri/mainpages/bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "images/check.png",
                  height: 100,
                ),
              ),
              const Text(
                "Thank you!",
                style: TextStyle(
                  color: Color(0xFF6D8A6B),
                  fontSize: 70,
                  fontFamily: 'Goudy',
                ),
              ),
              Text(
                "We’ll send you a confirmation email shortly to:",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "aminemerdaoui1@gmail.com",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "And you can contact us on:",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/whats.png",
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    "images/face.png",
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    "images/insta.png",
                    height: 50,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
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
                    color: Color.fromARGB(255, 207, 229, 205),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Back home",
                    style: GoogleFonts.poppins(
                      color: const Color(0xAA0E1F12),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
