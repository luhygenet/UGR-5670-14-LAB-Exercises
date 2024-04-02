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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.upload), Icon(Icons.settings)],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('assets/bird.jpg'),
            ),
            Text(
              "1975 porche 911 Camaro",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      Text("0")
                    ]),
                    Row(children: [
                      Icon(
                        Icons.comment,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      Text("0")
                    ]),
                    Row(children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                      Text("share")
                    ]),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Esential information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "1 of 3 done",
                  style: TextStyle(fontSize: 15.0, color: Colors.green),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                  Text(
                    "Year,Make,Model,Vin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              Icon(
                Icons.edit,
                color: Colors.blue,
                size: 40.0,
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Year: 1975"),
                Text("Make: porche"),
                Text("Model: camaro"),
                Text("Vin: 0987656789")
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                  Text(
                    "Year,Make,Model,Vin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              Icon(
                Icons.edit,
                color: Colors.grey,
                size: 40.0,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.grey,
                    size: 40.0,
                  ),
                  Text(
                    "Year,Make,Model,Vin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
              Icon(
                Icons.edit,
                color: Colors.grey,
                size: 40.0,
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
