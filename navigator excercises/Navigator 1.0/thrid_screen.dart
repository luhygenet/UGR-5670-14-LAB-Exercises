import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Three"),
      ),
      body: Center(
      
        child: ElevatedButton(
            child: Text(text),
            onPressed: () {
              Navigator.pop(context, "hello there");
            }),
      ),
    );
  }
}
