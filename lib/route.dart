import 'package:flutter/material.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
/*
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
        return _errorRoute2();
      default:
        return _errorRoute();
    }
  }
  
  */
    final a = settings.name;

    if (a is String) {
      if (a.length == 1) {
        return MaterialPageRoute(builder: (_) => Firstpage());
      } else if (a.substring(0, 7) == '/second') {
        return MaterialPageRoute(
          builder: (_) =>
              Secoundpage(data: a.replaceAll(a.substring(0, 8), '')),
        );
      } else {
        return _errorRoute();
      }
    } else {
      return _errorRoute2();
    }
  }

  static Route<dynamic> _errorRoute() {
    print('error ');
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text('error'),
        ),
      );
    });
  }

  static Route<dynamic> _errorRoute2() {
    print('error2 ');
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error2'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('error'),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text('error'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
