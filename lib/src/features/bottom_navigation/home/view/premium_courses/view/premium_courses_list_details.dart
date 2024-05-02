// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/premium_courses_teacher_container.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/p_details.dart';

class PremiumCoursesListDetails extends StatefulWidget {
  const PremiumCoursesListDetails({super.key});

  @override
  State<PremiumCoursesListDetails> createState() =>
      _PremiumCoursesListDetailsState();
}

class _PremiumCoursesListDetailsState extends State<PremiumCoursesListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Premium Courses",
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
                    MaterialPageRoute(builder: (context) => PDetails()));
              },
              child: PremiumCoursesTeacherContainer());
        },
      ),
    );
  }
}
