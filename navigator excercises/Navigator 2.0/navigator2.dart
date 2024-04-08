import 'package:flutter/material.dart';
import 'package:quotes/courseApp.dart'; // Import the Course class from the correct location

void main() {
  runApp(
    MaterialApp(home: courseApp()),
  );
}

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({
    Key? key,
    required this.courses,
    required this.onTapped,
  }) : super(key: key);

  final List<Course> courses;
  final ValueChanged<Course> onTapped;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}
