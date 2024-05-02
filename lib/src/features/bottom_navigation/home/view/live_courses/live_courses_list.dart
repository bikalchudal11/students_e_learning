// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/premium_courses_teacher_container.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/components/live_courses_container.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_details.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/p_details.dart';

class LiveCoursesListDetails extends StatefulWidget {
  const LiveCoursesListDetails({super.key});

  @override
  State<LiveCoursesListDetails> createState() => _LiveCoursesListDetailsState();
}

class _LiveCoursesListDetailsState extends State<LiveCoursesListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Live Courses",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CourseDetails()));
              },
              child: PremiumCoursesTeacherContainer());
        },
      ),
    );
  }
}
