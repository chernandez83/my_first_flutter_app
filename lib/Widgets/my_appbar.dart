import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "App bien pata",
        style: TextStyle(
          fontFamily: "BungeeSpice",
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 5,
      shadowColor: Colors.deepOrangeAccent,
      centerTitle: true,
      toolbarOpacity: 0.95,
      // toolbarHeight: 75,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      actions: const [
        Icon(Icons.search, color: Colors.white,),
        Icon(Icons.more_vert, color: Colors.white,)
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
