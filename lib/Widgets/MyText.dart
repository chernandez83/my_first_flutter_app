import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {

    return const Text(
      "¡Hola Flutter! Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.normal,
        letterSpacing: 2,
        wordSpacing: 5,
        backgroundColor: Colors.deepOrangeAccent,
        fontFamily: "REM",
        decoration: TextDecoration.underline,
        decorationColor: Colors.white,
      ),
      textAlign: TextAlign.justify,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

}