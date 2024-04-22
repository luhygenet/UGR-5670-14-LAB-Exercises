import 'package:flutter/material.dart';
import 'package:flutter_application_provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        home: (CounterPage()),
      ),
    );
  }
}
