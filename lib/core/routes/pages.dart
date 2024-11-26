import 'package:basket_app/basket_app.dart';
import 'package:calculator_app/calculator.dart';
import 'package:flutter/material.dart';
import 'package:lighter_app/lighter.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:workshop/pages/home_screen.dart';
import 'package:workshop/pages/splash_screen.dart';
import 'package:xo_app/game_page.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) {
          return const SplashScreen();
        });
      case RoutesName.home:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case RoutesName.lighterApp:
        return MaterialPageRoute(builder: (_) {
          return const LighterScreen();
        });
      case RoutesName.basketApp:
        return MaterialPageRoute(builder: (_) {
          return const BasketAppScreen();
        });
      case RoutesName.calculatorApp:
        return MaterialPageRoute(builder: (_) {
          return const Calculator ();
        });
      case RoutesName.xoApp:
        return MaterialPageRoute(builder: (_) {
          return const GamePage();
        });
      default:
        throw Exception('Route not found!');
    }
  }
}
