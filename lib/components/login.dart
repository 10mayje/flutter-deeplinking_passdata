import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String data;
  Login({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(data),
      ),
    );
  }
}
