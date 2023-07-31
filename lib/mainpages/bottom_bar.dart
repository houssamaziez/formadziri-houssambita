import 'package:flutter/material.dart';
import 'package:formadziri/mainpages/home.dart';
import 'package:formadziri/mainpages/podcasts.dart';
import 'package:formadziri/mainpages/profile.dart';
import 'package:formadziri/mainpages/search.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  final screens = [
    Home(),
    const Search(),
    const Podcasts(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: const Color(0xFFCFE5CD),
            indicatorColor: const Color(0xFF9BBB99),
            labelTextStyle: MaterialStatePropertyAll(
              GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: <Widget>[
            NavigationDestination(
              icon: const ImageIcon(
                AssetImage("images/nav/1e.png"),
                size: 21,
              ),
              selectedIcon: const ImageIcon(
                AssetImage("images/nav/1f.png"),
                size: 21,
              ),
              label: "home",
              //AppLocalizations.of(context).home,
            ),
            NavigationDestination(
              icon: const ImageIcon(
                AssetImage("images/nav/2e.png"),
                size: 21,
              ),
              selectedIcon: const ImageIcon(
                AssetImage("images/nav/2f.png"),
                size: 21,
              ),
              label: "search",
              //AppLocalizations.of(context).search,
            ),
            NavigationDestination(
              icon: const ImageIcon(
                AssetImage("images/nav/3e.png"),
                size: 21,
              ),
              selectedIcon: const ImageIcon(
                AssetImage("images/nav/3f.png"),
                size: 21,
              ),
              label: "podcasts",
              //AppLocalizations.of(context).podcasts,
            ),
            NavigationDestination(
              icon: const ImageIcon(
                AssetImage("images/nav/4e.png"),
                size: 21,
              ),
              selectedIcon: const ImageIcon(
                AssetImage("images/nav/4f.png"),
                size: 21,
              ),
              label: "profile",
              //AppLocalizations.of(context).profile,
            ),
          ],
        ),
      ),
    );
  }
}
