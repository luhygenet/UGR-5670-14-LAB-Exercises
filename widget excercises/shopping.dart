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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 40.0,
                    ),
                  ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shopping cart",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Verify your quantity and click checkout",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/bird.jpg"),
                    width: 100.0,
                    height: 100.0,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Calas",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    "15 dollars",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.deepOrange,
                    size: 40.0,
                  ),
                  Text("1.0"),
                  Icon(
                    Icons.add,
                    color: Colors.deepOrange,
                    size: 40.0,
                  ),
                ],
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/bird.jpg"),
                    width: 100.0,
                    height: 100.0,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Angel hair",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    "salmon, mozarella",
                    style: TextStyle(fontSize: 10.0, color: Colors.blueGrey),
                  ),
                  Text(
                    "22 dollars",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.deepOrange,
                    size: 40.0,
                  ),
                  Text("1.0"),
                  Icon(
                    Icons.add,
                    color: Colors.deepOrange,
                    size: 40.0,
                  ),
                ],
              )
            ],
          ),
          Container(
            color: Colors.grey,
            width: 400.0,
            height: 300.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "subtotal",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "TAX",
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "subtotal",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "TAX",
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Checkout"),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    )));
  }
}
