import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      //image: AssetImage("assets/images/gatoborracho.webp"),
      image: const NetworkImage("https://www.animatedimages.org/data/media/209/animated-cat-image-0301.gif"),
      width: 400,
      height: 500,
      fit: BoxFit.contain,
      // color: Colors.red,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
               return const Text(
                 "Error al cargar la imagen",
                 style: TextStyle(
                   fontSize: 25,
                 ),
               );
          },
    );
  }
}
