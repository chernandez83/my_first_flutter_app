import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/MyText.dart';
import 'package:my_first_app/Widgets/myIcon.dart';
import 'package:my_first_app/Widgets/myImage.dart';
import 'package:my_first_app/Widgets/myRichText.dart';
import 'package:my_first_app/Widgets/my_buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
       body: const SafeArea(
         child: MyButtons(),
       ),
    );
  }
}