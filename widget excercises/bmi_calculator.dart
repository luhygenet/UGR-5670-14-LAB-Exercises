import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Lab1());
}

class Lab1 extends StatelessWidget {
  const Lab1({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("BMI calcuolator"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(25.0),
                  child: const Column(children: [
                    Icon(
                      Icons.male,
                      color: Colors.black,
                      size: 70.0,
                    ),
                    Text("MALE")
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(25.0),
                  child: const Column(children: [
                    Icon(
                      Icons.female,
                      color: Colors.black,
                      size: 70.0,
                    ),
                    Text("MALE")
                  ]),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("height"),
                    Row(
                      children: [
                        Text(
                          "176",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(fontSize: 25.0),
                        )
                      ],
                    ),
                    Text("slider"),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(25.0),
                  child: const Column(children: [
                    Icon(
                      Icons.male,
                      color: Colors.black,
                      size: 70.0,
                    ),
                    Text("MALE")
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(25.0),
                  child: const Column(children: [
                    Icon(
                      Icons.female,
                      color: Colors.black,
                      size: 70.0,
                    ),
                    Text("MALE")
                  ]),
                )
              ],
            )
          ],
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(color: Colors.purple),
          child: const SizedBox(
              width: 500.0,
              height: 50.0,
              child: Center(
                child: Text("calculate"),
              )),
        ),
      ),
    ));
  }
}
