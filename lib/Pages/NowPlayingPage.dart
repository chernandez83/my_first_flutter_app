import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Widgets/MultiChild/Actividad/NowPlayingWidget.dart';
import 'package:my_first_app/Widgets/MultiChild/MyColumn.dart';
import 'package:my_first_app/Widgets/MultiChild/MyRow.dart';
import 'package:my_first_app/Widgets/MultiChild/MyStack.dart';

class NowPlayingPage extends StatefulWidget {
  const NowPlayingPage({super.key});

  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "NowPlayingPage",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                ElevatedButton(
                  child: const Text(
                    "MyHomePage",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () => {
                    /*Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const MyHomePage(title: "Hola",),
                    )
                    ),*/
                    Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments('Borrachera', 'Hola')),
                  },
                ),
                const NowPlaying(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}