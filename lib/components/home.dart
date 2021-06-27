import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'carousal.dart';
import 'horizontal.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey[400],
          title: Text('Art World'),
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
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.grey[400]),
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
        body: new ListView(
          children: <Widget>[
            new SizedBox(
                height: 250.0,
                width: 300.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("images/images/c1.jpg"),
                    ExactAssetImage("images/images/m1.jpeg"),
                    ExactAssetImage("images/images/m2.jpg"),
                    ExactAssetImage("images/images/w1.jpeg"),
                    ExactAssetImage("images/images/w4.jpeg"),
                    ExactAssetImage("images/images/w3.jpeg"),
                  ],
                )),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text('Categories'),
            ),
            HorizontalList(),
          ],
        ));
  }
}
