import 'package:flutter/material.dart';
import 'package:proyecto_de_navegacion/main.dart';
import 'package:proyecto_de_navegacion/pages/loginpage.dart';
import 'package:proyecto_de_navegacion/pages/now_play_page.dart';
import 'package:proyecto_de_navegacion/pages/play_list_page.dart';


const String routeHome = "/home";
const String routeLogin = "/login";
const String routePlayList = "/play_list";
const String routNowPlay = "/now_play";

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/play_list":
        return MaterialPageRoute(builder: (_) => const PlayListPage());
      case "/now_play":
        return MaterialPageRoute(builder: (_) => const NowPlayPage(title: '', description: '', songDescription: '',));
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}

