import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Example provider',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
          child: Column(children: [
        Text(
          "you pressed $count times",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: counter.increment, child: Text("plus")),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              onPressed: counter.decrement,
              child: Text("Minus"),
            ),
          ],
        ),
      ])),
    );
  }
}
