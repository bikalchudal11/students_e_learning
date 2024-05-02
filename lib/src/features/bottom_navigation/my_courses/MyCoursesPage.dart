import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/bottom_navigation/my_courses/course_container.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Courses",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
          SizedBox(
            height: 10,
          ),
          CourseComponent(
            percentage: 60,
            title: 'Chemistry',
            subtitle: 'Algebra',
            progressColor: Colors.blue,
          ),
          CourseComponent(
            percentage: 30,
            title: 'Physics',
            subtitle: 'Motion',
            progressColor: Colors.red,
          ),
          CourseComponent(
            percentage: 55,
            title: 'Maths',
            subtitle: 'Algebra',
            progressColor: Colors.purple,
          ),
          CourseComponent(
            percentage: 40,
            title: 'Biology',
            subtitle: 'Plant Kingdom',
            progressColor: Colors.yellow,
          ),
        ],
      ),
    ));
  }
}
