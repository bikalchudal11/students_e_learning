// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/bottom_navigation/chat/chat_page.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/home_dashboard.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_details.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_subject.dart';
import 'package:students_e_learning/src/features/login/view/login_screen.dart';
import 'package:students_e_learning/src/features/login/view/splash_screen.dart';
import 'package:students_e_learning/src/features/my_courses/courses.dart';
import 'package:students_e_learning/src/features/select_subject/view/select_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomeDashBoard(),
    );
  }
}
