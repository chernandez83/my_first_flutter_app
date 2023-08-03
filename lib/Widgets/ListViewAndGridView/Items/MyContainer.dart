import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Tap en Container');
      },
      onLongPress: () {
        print('LongPress en Container');
      },
      child: Container(
        // color: Colors.deepOrange[100],
        width: 200,
        height: 200,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.deepOrange.shade100,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          border: Border.all(
            color: Colors.deepOrangeAccent,
            width: 5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange.shade50,
              offset: const Offset(20, 15),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent,
              Colors.deepOrange.shade100,
              Colors.red.shade900,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/catrina.png'),
            fit: BoxFit.contain,
            colorFilter: ColorFilter.linearToSrgbGamma(),
          ),
        ),
        child: const Text(
          'Hola tú',
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