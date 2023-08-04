import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyGridView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart';

import '../Models/Sound.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key});

  @override
  State<StatefulWidget> createState() => PlayListPageState();
}

class PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => myListViewKey.currentState?.add(
          Sound(
            title: 'This is Halloween',
            author: 'Simone Simons'
          ),
        ),
        child: const Icon(Icons.add_circle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "PlayListPage",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                ElevatedButton(
                  child: const Text(
                    "NowPlayingPage",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () => {
                    /*Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const NowPlayingPage(),
                  )
                  ),*/
                    Navigator.pushNamed(context, ROUTE_NOWPLAYING),
                  },
                ),
                const MyContainer(),
                const MyCard(),
                MyListView(),
                //const MyListTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
