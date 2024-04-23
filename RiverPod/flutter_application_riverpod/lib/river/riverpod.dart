import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final counterStateProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. watch the counterStateProvider
    var counter = ref.watch(counterStateProvider);
    return Scaffold(
      body: Center(
        child: Text(
          'Value: $counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () => ref.read(counterStateProvider.state).state++,
              child: Text("plus"),
            ),
            FloatingActionButton(
              onPressed: () => ref.read(counterStateProvider.state).state--,
              child: Text("minus"),
            )
          ],
        ),
      ),
    );
  }
}
