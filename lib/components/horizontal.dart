import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new IconButton(
            icon: const Icon(
              Icons.add,
              size: 20.0,
            ),
            tooltip: 'add',
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/second', arguments: 'hello there');
            },
          ),
        ],
      ),
    );
  }
}
