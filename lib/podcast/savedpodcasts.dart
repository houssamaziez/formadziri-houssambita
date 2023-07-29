import 'package:flutter/material.dart';
import 'package:formadziri/podcast/savedlist.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SavedPodcasts extends StatelessWidget {
  const SavedPodcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded,
              color: Color(0xFF93BD8F)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/empty.png", height: 180),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Center(
                    child: Text(
                      "You haven’t saved any podcasts just yet",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF93BD8F)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SavedList(); //
                        },
                      ),
                    );
                  },
                  child: Text("checkthem",
                    //AppLocalizations.of(context).checkthem,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
