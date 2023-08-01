import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/LoginPage.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = '/home';
const String ROUTE_LOGIN = '/login';
const String ROUTE_PLAYLIST = '/playlist';
const String ROUTE_NOWPLAYING = '/nowplaying';

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case ROUTE_HOME:
        //return MaterialPageRoute(builder: (_) => MyHomePage());
        return PageTransition(
          child: const MyHomePage(),
          type: PageTransitionType.scale,
          settings: settings,
          alignment: Alignment.center,
        );
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case ROUTE_PLAYLIST:
        return MaterialPageRoute(builder: (_) => PlayListPage());
      case ROUTE_NOWPLAYING:
        return MaterialPageRoute(builder: (_) => NowPlayingPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}