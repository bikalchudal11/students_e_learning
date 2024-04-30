import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/my_courses/course_container.dart';

class CircularProgressBar extends StatelessWidget {
  final double percentage;

  const CircularProgressBar({Key? key, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 12),
        //     child: Text(
        //       "My Courses",
        //       style: TextStyle(fontWeight: FontWeight.w600),
        //     ),
        //   ),
        // ),
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My Courses",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
        ),
        CourseComponent(
          percentage: 60,
          title: 'Chemestry',
          subtitle: 'Algebra',
          progressColor: Colors.blue,
        ),
        CourseComponent(
          percentage: 30,
          title: 'Physic',
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
    ));
  }
}
