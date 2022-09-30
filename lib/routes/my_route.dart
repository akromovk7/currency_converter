import 'package:currency_converter/screens/view/main_view.dart';
import 'package:flutter/material.dart';

class MyRoute {
  static final MyRoute _instance = MyRoute.init();
  static MyRoute get instance => _instance;
  MyRoute.init();

  Route? myRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return easynavigate(MainView());
    }
  }

  easynavigate(Widget page) => MaterialPageRoute(builder: (context) => page);
}
