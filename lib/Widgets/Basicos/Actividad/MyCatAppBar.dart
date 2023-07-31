import 'package:flutter/material.dart';

class MyCatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Borrachos.com",
      ),
      titleTextStyle: const TextStyle(
        fontFamily: "BungeeSpice",
        fontSize: 25,
      ),
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
      shadowColor: Colors.deepOrangeAccent,
      toolbarOpacity: 1,
      toolbarHeight: 100,
      elevation: 5,
      shape: const Border(
        bottom: BorderSide(width: 2, color: Colors.deepOrangeAccent),
      ),
      leading: const Icon(
        Icons.star_border,
        color: Colors.deepOrangeAccent,
        size: 25,
      ),
      actions: const [
        Icon(Icons.edit, color: Colors.deepOrangeAccent, size: 25,),
        Icon(Icons.more_vert, color: Colors.deepOrangeAccent, size: 25,),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}