import 'package:flutter/material.dart';
import 'package:restaurant/core/config/routes/routes_name.dart';
import 'package:restaurant/test.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppCharRoute.splash:
        return MaterialPageRoute(builder: (_) => const MyTest());
    }
    return null;
  }
}