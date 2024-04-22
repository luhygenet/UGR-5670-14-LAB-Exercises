import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "you pressed $count times",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(CounterIncrementPressed());
                      },
                      child: Text("Plus"),
                    ),
                    SizedBox(width: 20),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterBloc>(context)
                            .add(CounterDecrementPressed());
                      },
                      child: Text("Minus"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
