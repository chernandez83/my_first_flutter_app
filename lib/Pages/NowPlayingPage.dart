import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const MyHomePage(title: "Hola",),
                    )
                    ),
                  },
                ),
                const MyStack(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}