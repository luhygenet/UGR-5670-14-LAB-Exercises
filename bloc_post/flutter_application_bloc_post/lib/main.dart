import 'package:flutter/material.dart';
import 'package:flutter_application_bloc_post/features/home/home_page.dart';
import 'package:flutter_application_bloc_post/features/posts/ui/posts_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostsPage(),
    );
  }
}
