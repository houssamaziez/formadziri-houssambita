import 'package:flutter/material.dart';

import '../pages/username.dart';

class Fab extends StatelessWidget {
  const Fab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFCFE5CD),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return UserName();
              },
            ),
          );
        },
        icon: const Icon(
          Icons.arrow_forward_rounded,
          color: Color(0xFF244E2F),
        ),
        color: Colors.green,
        iconSize: 30.0,
        padding: const EdgeInsets.all(16.0),
        splashRadius: 24.0,
      ),
    );
  }
}
