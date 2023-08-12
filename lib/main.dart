import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Values/ThemeApp.dart';
import 'package:my_first_app/generated/l10n.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp():super(key: myAppKey);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //ThemeApp themeApp = ThemeApp();

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MyRouters.generateRoute,
        initialRoute: ROUTE_PLAYLISTALT,
        themeMode: themeMode,
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          //useMaterial3: true,
          textTheme: textTheme,
          iconTheme: iconThemeData1,
          primaryIconTheme: iconThemeData1,
          scaffoldBackgroundColor: background,
        ),
        darkTheme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          //useMaterial3: true,
          textTheme: textThemeDark,
          iconTheme: iconThemeDataDark,
          primaryIconTheme: iconThemeDataDark,
          scaffoldBackgroundColor: backgroundDark,
        ),
        //home: const LoginPage(),
      ),
    );
  }

  changeTheme(ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }
}
