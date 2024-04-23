import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final postsProvider = FutureProvider<List<dynamic>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    return jsonData;
  } else {
    throw Exception('Failed to load posts');
  }
});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Posts',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Riverpod Posts'),
        ),
        body: Center(
          child: Consumer(builder: (context, WidgetRef ref, _) {
            final postsAsyncValue = ref.watch(postsProvider);

            return postsAsyncValue.when(
              data: (posts) {
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return ListTile(
                      title: Text(post['title']),
                      subtitle: Text(post['body']),
                    );
                  },
                );
              },
              loading: () => CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            );
          }),
        ),
      ),
    );
  }
}
