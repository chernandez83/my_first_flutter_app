import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: ROUTE_PLAYLIST,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
