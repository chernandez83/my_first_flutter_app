import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/MyAlbumListView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart';

class PlayListPageAlt extends StatefulWidget {
  const PlayListPageAlt({super.key});

  @override
  State<StatefulWidget> createState() => PlayListPageAltState();

}

class PlayListPageAltState extends State<PlayListPageAlt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 200,
                  child: MyAlbumListView(),
                ),
                MyListView(),
              ],
          )
        )
      )
    );
  }

}