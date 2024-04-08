import 'package:flutter/material.dart';
import 'package:quotes/thrid_screen.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  final int age;

  const ScreenTwo({
    Key? key,
    required this.name,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen TWO"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                child: Text(name),
                onPressed: () async {
                  final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ScreenThree(),
                          settings:
                              const RouteSettings(arguments: "data from x")));
                  print(result);
                }),
            const Text("This is the second screen"),
          ],
        ));
  }
}
