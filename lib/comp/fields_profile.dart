import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final TextEditingController controller;
  final String hintText;
  final bool obscuredText;

  const LoginField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuredText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      child: TextField(
        style: const TextStyle(
            color: Color(0xFF2B3E29),
            fontSize: 16,
            fontWeight: FontWeight.w600),
        controller: controller,
        obscureText: obscuredText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color(0xFF60735E),
              fontSize: 16,
              fontWeight: FontWeight.w600),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 207, 229, 205),
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color(0xFF93BD8F),
              width: 2.5,
            ),
          ),
          fillColor: Colors.transparent,
          filled: true,
          // moved cursorColor here
        ),
        cursorColor: const Color.fromARGB(255, 207, 229, 205),
      ),
    );
  }
}
