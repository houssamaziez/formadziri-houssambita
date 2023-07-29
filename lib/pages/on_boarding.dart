import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../comp/fab.dart';
import '../comp/on_boarding_content.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _currentPage == 2 ? const Fab() : null, //THE BUTTON
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Center(
                      child: OnBoardContent(
                        image: "images/c1.png",
                        title: "takeoneononecourses",
                        //AppLocalizations.of(context).takeoneononecourses,
                        desc: "fktc",
                        //AppLocalizations.of(context).fktc,
                      ),
                    );
                  } else if (index == 1) {
                    return Center(
                      child: OnBoardContent(
                        image: "images/c2.png",
                        title: "learnfromthebest",
                        //AppLocalizations.of(context).learnfromthebest,
                        desc: "onlineLearning",
                        //AppLocalizations.of(context).onlineLearning,
                      ),
                    );
                  } else if (index == 2) {
                    return Center(
                      child: OnBoardContent(
                        image: "images/c3.png",
                        title: "joinCommunity",
                        //AppLocalizations.of(context).joinCommunity,
                        desc: "connectwith",
                        //AppLocalizations.of(context).connectwith,
                      ),
                    );
                  }
                  return Container();
                },
                itemCount: 3,
              ),
            ),
            SmoothPageIndicator(
                controller: _pageController, // PageController
                count: 3,
                effect: const WormEffect(
                    type: WormType.normal,
                    spacing: 10,
                    dotWidth: 12,
                    dotHeight: 12,
                    activeDotColor: Color.fromARGB(255, 36, 78, 47),
                    dotColor: Color.fromARGB(
                        255, 207, 229, 205)), // your preferred effect
                onDotClicked: (index) {}),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
