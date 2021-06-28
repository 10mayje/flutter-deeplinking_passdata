import 'package:flutter/material.dart';

import 'route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art World',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = 'data';
    print('first ');
    return //home();

        Scaffold(
            body: Center(
      child: Column(
        children: [
          Text('hi there'),
          new TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second/$data');
              },
              child: Text('hi there'))
        ],
      ),
    ));
  }
}

class Secoundpage extends StatelessWidget {
  final String data;
  Secoundpage({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('seound ');
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          new Padding(
            padding: const EdgeInsets.all(20.0),
          ),
          Text(' here is the data that is send by deep link'),
          Text(data)
        ],
      ),
    ));
  }
}
