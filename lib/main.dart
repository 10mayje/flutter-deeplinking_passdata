import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime World',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Text('Anime World'),
          actions: <Widget>[
            new IconButton(
                onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
            new IconButton(
                onPressed: null,
                icon: Icon(Icons.notifications, color: Colors.white))
          ],
        ),
        drawer: new Drawer(
          child: new ListView(children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('tanmay'),
              accountEmail: Text('tanmay@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),

            // ----draw bar body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.pink,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(
                  Icons.category,
                  color: Colors.pink,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Favorite'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ]),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
