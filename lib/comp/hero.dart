import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:formadziri/courses/couresid.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../BDD/Controllers/test2.dart';


class HeroSdec extends StatefulWidget {
  HeroSdec({Key? key}) : super(key: key);

  @override
  State<HeroSdec> createState() => _HeroSecState();
}

class _HeroSecState extends State<HeroSdec> {
  final CourseBloc _courseBloc = CourseBloc();

  // @override
  // void initState() {
  //   super.initState();
  //   _courseBloc.fetchCourse();
  // }

  // @override
  // void dispose() {
  //   _courseBloc.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: waitdataNewoCores(),
    );
  }
}

Column waitdataNewoCores() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        child: Image.asset(
          "images/hero.png",
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Text(
          "newcourses",
          //AppLocalizations.of(context).newcourses,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Goudy',
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Text(
          "starting",
          //AppLocalizations.of(context).starting,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: FilledButton(
          style:
              FilledButton.styleFrom(backgroundColor: const Color(0xFF93BD8F)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return  DesignCat(datacategorie: ,); //
            //     },
            //   ),
            // );
          },
          child: Text(
            "checkthem",
            //AppLocalizations.of(context).checkthem,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  );
}

class HeroSec extends StatelessWidget {
  const HeroSec({super.key});

  @override
  Widget build(BuildContext context) {
    return newMethod();
  }
}

StreamBuilder newMethod() {
  return StreamBuilder(
    stream: FirebaseFirestore.instance
        .collection('collection')
        .doc("notificationcours")
        .snapshots(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        // Data snapshot available, you can access data using snapshot.data
        // Example: var documents = snapshot.data.docs;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.network(
                snapshot.data["image"].toString(),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "newcourses",
                //AppLocalizations.of(context).newcourses,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Goudy',
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Text(
                snapshot.data["name"].toString(),
                //AppLocalizations.of(context).starting,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF93BD8F)),
                onPressed: () {
                  //snapshot.data["id"].toString();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CourseID(idsubcategorie: 12); //
                      },
                    ),
                  );
                },
                child: Text(
                  "checkthem",
                  //AppLocalizations.of(context).checkthem,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        );
      } else {
        // Data snapshot is not yet available (initial load)
        return waitdataNewoCores();
      }
    },
  );
}
