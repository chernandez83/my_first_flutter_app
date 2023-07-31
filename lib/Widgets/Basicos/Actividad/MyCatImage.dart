import 'package:flutter/material.dart';

class MyCatImage extends StatelessWidget {
  const MyCatImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage('assets/images/gatoborracho.webp'),
      width: 350,
      height: 500,
      fit: BoxFit.contain,
      errorBuilder:
      (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Text(
          "Error al cargar la imagen",
          style: TextStyle(
            fontFamily: 'BungeeSpice',
            fontSize: 25,
          ),
        );
      },
    );
  }
}