import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final maxChar;

  final String hintText;

  const Fields({
    super.key,
    required this.controller,
    this.maxChar,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: TextField(
        maxLength: maxChar,
        controller: controller,
        decoration: const InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          hintStyle: TextStyle(color: Color.fromARGB(255, 207, 229, 205)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 207, 229, 205),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color(0xFF93BD8F),
              width: 2.5,
            ),
          ),
          fillColor: Colors.transparent,
          filled: true,
        ),
        cursorColor: const Color.fromARGB(255, 207, 229, 205),
      ),
    );
  }
}
