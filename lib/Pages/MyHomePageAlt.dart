import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
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
import 'package:my_first_app/Widgets/Menus/Fragments/MyHomeFragment.dart';
import 'package:my_first_app/Widgets/Menus/Fragments/MyProfileFragment.dart';
import 'package:my_first_app/Widgets/Menus/Fragments/MySettingsFragment.dart';
import 'package:my_first_app/Widgets/Menus/MyBottomNavigationBar.dart';
import 'package:my_first_app/Widgets/Menus/MyDrawer.dart';

class MyHomePageAlt extends StatefulWidget {
  const MyHomePageAlt({super.key});

  @override
  State<MyHomePageAlt> createState() => _MyHomePageAltState();

}

class _MyHomePageAltState extends State<MyHomePageAlt> {

  List fragments = const [
    MyHomeFragment(),
    MyProfileFragment(),
    MySettingsFragment(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      //floatingActionButton: const MyCatFloatingActionButton(),
      drawer: const MyDrawer(),
      bottomNavigationBar: MyBottomNavigationBar(onTap, currentIndex),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyCatFloatingActionButton(bottomSheet),
          //MyCatFloatingActionButton(),
          //MyCatFloatingActionButton(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: MyCatAppBar(),
      body: fragments[currentIndex],
    );
  }

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  bottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return const Wrap(
          children: [
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Compartir'),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: Text('Copiar enlace'),
                ),
                ListTile(
                  leading: Icon(Icons.send),
                  title: Text('Enviar'),
                ),
              ],
            ),
          ],
        );
      }
    );
  }

}