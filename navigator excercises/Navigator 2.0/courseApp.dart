import 'package:flutter/material.dart';
import 'package:quotes/navigator2.dart';

class Course {
  String code;
  String title;
  String description;
  Course({required this.code, required this.title, this.description = ""});
}

class courseApp extends StatefulWidget {
  const courseApp({super.key});

  @override
  State<courseApp> createState() => _courseAppState();
}

class _courseAppState extends State<courseApp> {
  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  Course? _selectedCourse;

  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(code: "SiTE-001", title: "Mobile development", description: "Work"),
    Course(
        code: "SiTE-001",
        title: "Discrete Mathematics",
        description: "Computer Organization, Architecture, Programming"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
              key: const ValueKey('CourseListScreen'),
              child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
              )),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailsScreen(
                  course: _selectedCourse!,
                ))
        ],
      ),
    );
  }
}
