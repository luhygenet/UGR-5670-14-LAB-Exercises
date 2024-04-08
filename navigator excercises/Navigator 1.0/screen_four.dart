import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen Four"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: const Text("routing"),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/fifth');
                print(result);
              },
            ),
            const Text("This is the fourth screen"),
          ],
        ));
  }
}
