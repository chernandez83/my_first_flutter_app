import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tap en Card');
      },
      onDoubleTap: () {
        print('DoubleTap en Card');
      },
      onTapDown: (TapDownDetails downDetails) {
        print('TapDown en Card ${downDetails.localPosition}');
      },
      onTapUp: (TapUpDetails upDetails) {
        print('TapUp en Card ${upDetails.localPosition}');
      },
      /*onLongPress: () {
        print('LongPress en Card');
      },*/
      child: Card(
        elevation: 25,
        margin: const EdgeInsets.all(10),
        color: Colors.deepOrange.shade100,
        shadowColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.deepOrangeAccent,
            width: 10,
          ),
        ),
        child: const Text(
          " Hola tú. ",
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 5,
                  color: Colors.white,
                ),
                Shadow(
                  offset: Offset(-2, -2),
                  blurRadius: 5,
                  color: Colors.red,
                ),
              ]
          ),
        ),
      ),
    );
  }
  
}