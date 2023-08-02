import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.loose,
      children: [
        Image.asset("assets/images/gatoborracho.webp"),
        const Positioned(
          right: 50,
          child: Icon(Icons.no_drinks, color: Colors.greenAccent, size: 50,),
        ),
        const Positioned(
          left: 50,
          child: Icon(Icons.no_drinks, color: Colors.greenAccent, size: 50,),
        ),
      ],
    );
  }
  
}