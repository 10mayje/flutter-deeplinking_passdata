import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home.dart';
import 'package:flutter_application_1/components/login.dart';
import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Firstpage());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Secoundpage(
              data: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
        body: Center(
          child: Text('error'),
        ),
      );
    });
  }
}
