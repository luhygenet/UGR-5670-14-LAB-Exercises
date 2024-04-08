import 'package:flutter/material.dart';
import 'package:quotes/screen_five.dart';
import 'package:quotes/screen_four.dart';
import 'package:quotes/DetailScreen.dart';
import 'package:quotes/UnknownScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => ScreenOne(),
      '/fourth': (context) => ScreenFour(),
      '/fifth': (context) => ScreenFive(), // Pass name and age here
    },
    onGenerateRoute: (settings) {
      // Handle '/details/:id'
      var uri = Uri.parse(settings.name!);
      if (uri.pathSegments.length == 2 && uri.pathSegments.first == 'details') {
        var id = uri.pathSegments[1];
        return MaterialPageRoute(builder: (context) => DetailScreen(id: id));
      }
      // Handle other routes or unknown routes
      return MaterialPageRoute(builder: (context) => const UnknownScreen());
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
            final result = await Navigator.pushNamed(context, '/fourth');
            print(result);
          },
        ),
      ),
    );
  }
}