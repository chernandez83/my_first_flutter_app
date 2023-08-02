import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hola ",style: TextStyle(fontSize: 50)),
          Text("Hola ",style: TextStyle(fontSize: 50)),
          Text("Hola ",style: TextStyle(fontSize: 50)),
          Text("Hola ",style: TextStyle(fontSize: 50)),
          Column(
            children: [
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
              Text("Hola",style: TextStyle(fontSize: 50)),
            ],
          ),
        ],
      ),
    );
  }
  
}