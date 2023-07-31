import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Model/TopCategorie.dart';
import 'package:formadziri/home_comp/titles.dart';
import 'package:formadziri/pages/uploadphoto.dart';
import 'package:google_fonts/google_fonts.dart';

import '../BDD/Controllers/test2.dart';
import '../BDD/Model/home.dart';
import '../comp/hero.dart';
import '../comp/lang_row.dart';
import '../home_comp/cat1.dart';
import '../home_comp/cat2.dart';

import '../pages/username.dart';
import 'categories.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: "Welcome Back, ",
                ),
                TextSpan(
                  text: usernameController.text,
                  //  + passwordController.text,
                  style: TextStyle(
                    color: Color(0xFF93BD8F),
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: IconButton(
                onPressed: (() {}),
                icon: userimageasset == ""
                    ? Image.asset(
                        File(userimage).path,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      )
                    : Image.file(
                        File(userimageasset),
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroSec(),
              HomeTitle(title: "Languages"),
              LangRow(),
              FutureBuilder<List<SubCategoriesSections>>(
                future: GetDattApi().getSubCategoriesSectionsData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                WaitImage(),
                                WaitImage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const Center(child: Text('Error loading data'));
                  } else {
                    return SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (SubCategoriesSections datasub
                                in snapshot.data!)
                              Cat2(data: datasub),
                          ]),
                    );
                  }
                },
              ),
              HomeTitle(title: "Categories"),
              SizedBox(
                height: 10,
              ),
              CategoriesWrap(),
              FutureBuilder<List<TopCategories>>(
                future: GetDattApi().getTopCategories(),
                // you can layla
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                WaitImage(),
                                WaitImage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const Center(child: Text('Error loading data'));
                  } else {
                    return SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (TopCategories datatop in snapshot.data!)
                              Cat1(data: datatop),
                          ]),
                    );
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}

class WaitImage extends StatelessWidget {
  const WaitImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/loedingimg.gif',
            fit: BoxFit.cover,
            width: 200,
            height: 110,
          )),
    );
  }
}
