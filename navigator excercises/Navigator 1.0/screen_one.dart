import 'package:flutter/material.dart';
import 'package:quotes/screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: ScreenOne(),
  ));
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenTwo(
                            name: "next screen",
                            age: 20,
                          )));
            }),
      ),
    );
  }
}
