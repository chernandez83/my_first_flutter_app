import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:my_first_app/Widgets/Menus/Fragments/MyHomeFragment.dart';
import 'package:my_first_app/Widgets/Menus/Fragments/MyProfileFragment.dart';
import 'package:my_first_app/Widgets/Menus/Fragments/MySettingsFragment.dart';

typedef VoidCallbackParam = Function(int index);

class MyBottomNavigationBar extends StatelessWidget {

  VoidCallbackParam voidCallbackParam;
  int currentIndex;

  MyBottomNavigationBar(this.voidCallbackParam, this.currentIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: voidCallbackParam,
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.deepOrangeAccent,
      iconSize: 30,
      selectedLabelStyle: const TextStyle(
        fontSize: 17,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 15,
      ),
      backgroundColor: Colors.greenAccent,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuración',
        ),
      ],
    );
  }

}