import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';

class MyCatFloatingActionButton extends StatelessWidget {
  VoidCallback voidCallback;

  MyCatFloatingActionButton(this.voidCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.deepOrangeAccent,
      hoverColor: Colors.deepOrange[100],
      elevation: 20,
      tooltip: "Tooltip",
      /*shape: const CircleBorder(
        side: BorderSide(
          color: Colors.deepOrangeAccent,
          width: 2,
        ),
      ),
      onPressed: () {
        //print("Click en MyCatFloatingButton");
        /*Navigator.push(context, MaterialPageRoute(
            builder: (context) => const PlayListPage(),
          ),
        );*/
        //Navigator.pop(context);
        Navigator.popAndPushNamed(context, ROUTE_PLAYLIST);
        // Removes all pages, leaving only the new one in the stack
        //Navigator.pushNamedAndRemoveUntil(context, ROUTE_PLAYLIST, (route) => false);
      },*/
      onPressed: () => voidCallback(),
      child: const Icon(
        Icons.liquor,
        size: 40,
      ),
    );
  }
}