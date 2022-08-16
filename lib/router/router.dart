import 'package:flutter/material.dart';
import 'package:weather_app/screens/splash_screen.dart';
import 'package:weather_app/screens/task_screen.dart';

class RouteGenerator {
  static final RouteGenerator _generator = RouteGenerator._init();
  static RouteGenerator get router => _generator;
  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return navigate(const SplashScreen());
      case '/task':
        return navigate(const TaskScreen());
    }
    return null;
  }

  navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
