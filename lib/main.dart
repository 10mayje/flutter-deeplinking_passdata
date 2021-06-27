import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_application_1/components/login.dart';
import 'components/carousal.dart';
import 'components/horizontal.dart';
import 'components/home.dart';
import 'route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art World',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return home();

    /*Scaffold(
        appBar: AppBar(
          title: Text('routing'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('hi there'),
              IconButton(
                icon: const Icon(Icons.person),
                tooltip: 'add',
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/second', arguments: 'hello there');
                },
              ),
            ],
          ),
        ));*/
  }
}

class Secoundpage extends StatelessWidget {
  final String data;
  Secoundpage({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('routing'),
        ),
        body: Center(
          child: Column(
            children: [Text(data)],
          ),
        ));
  }
}
