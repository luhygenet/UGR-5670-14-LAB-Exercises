import 'package:flutter/material.dart';
import 'package:quotes/screen_five.dart';
import 'package:quotes/screen_four.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => ScreenOne(),
      '/fourth': (context) => ScreenFour(),
      '/fifth': (context) => ScreenFive(), // Pass name and age here
    },
  ));
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen routing"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("go to screen 4"),
          onPressed: () async {
            final result = await Navigator.pushNamed(
                context, '/fourth'); 
            print(result);
          },
        ),
      ),
    );
  }
}
