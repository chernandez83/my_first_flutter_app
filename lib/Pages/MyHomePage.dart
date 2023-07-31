import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/MyCatAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/MyCatFloatingButton.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/MyCatImage.dart';
import 'package:my_first_app/Widgets/Basicos/MyText.dart';
import 'package:my_first_app/Widgets/Basicos/myIcon.dart';
import 'package:my_first_app/Widgets/Basicos/myImage.dart';
import 'package:my_first_app/Widgets/Basicos/myRichText.dart';
import 'package:my_first_app/Widgets/Basicos/my_appbar.dart';
import 'package:my_first_app/Widgets/Basicos/my_buttons.dart';
import 'package:my_first_app/Widgets/Basicos/my_floating_action_button.dart';

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
      //floatingActionButton: const MyCatFloatingActionButton(),
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyCatFloatingActionButton(),
          MyCatFloatingActionButton(),
          MyCatFloatingActionButton(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: const MyCatAppBar(),
      body: const SafeArea(
        child: Center(
          child: MyCatImage(),
        ),
      ),
    );
  }
}