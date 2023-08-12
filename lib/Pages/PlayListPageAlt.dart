import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/DimensApp.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/MyAlbumListView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart';
import 'package:my_first_app/generated/l10n.dart';

class PlayListPageAlt extends StatefulWidget {
  const PlayListPageAlt({super.key});

  @override
  State<StatefulWidget> createState() => PlayListPageAltState();

}

class PlayListPageAltState extends State<PlayListPageAlt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).money("\$20")),
      ),
      //backgroundColor: testOpacity,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myAppKey.currentState!.changeTheme(ThemeMode.dark);
        },
        child: const Icon(Icons.dark_mode),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: coverHeight,
                  child: const MyAlbumListView(),
                ),
                MyListView(),
              ],
          )
        )
      )
    );
  }

}