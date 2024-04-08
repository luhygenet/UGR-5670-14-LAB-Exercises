import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {

  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Text("unknown screen"),
      ),
    );
  }
}