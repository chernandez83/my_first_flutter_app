import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: "¿Tienes una cuenta? ",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: "REM",
        ),
        children: [
          TextSpan(
            text: "Inicia sesión",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
        ]
      ),
    );
  }
}
