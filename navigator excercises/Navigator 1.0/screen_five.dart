import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Five"),
      ),
      body: Center(
      
        child: ElevatedButton(
            child: Text("screen 5"),
            onPressed: () {
              Navigator.pop(context, "hello there");
            }),
      ),
    );
  }
}