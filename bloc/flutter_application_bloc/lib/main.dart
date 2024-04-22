import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Bloc.dart';
import 'bloc_ui.dart'; // Import the CounterPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(), // Provide the CounterBloc
      child: MaterialApp(
        home: CounterPage(), // Use the CounterPage widget as the home
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('BLOC'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue,
//       ),
//     ));
//   }
// }
