import 'package:flutter/material.dart';

import '../cat_english/english_cat.dart';

class LangRow extends StatefulWidget {
  const LangRow({Key? key}) : super(key: key);

  @override
  State<LangRow> createState() => _LangRowState();
}

class _LangRowState extends State<LangRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "images/lang/1.png",
              height: 84,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const EnglishCat(); //
                    },
                  ),
                );
              },
              child: Image.asset(
                "images/lang/2.png",
                height: 84,
              ),
            ),
            Image.asset(
              "images/lang/3.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/4.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/5.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/6.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/7.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/8.png",
              height: 84,
            ),
            Image.asset(
              "images/lang/9.png",
              height: 84,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
