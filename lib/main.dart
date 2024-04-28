// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/firebase_options.dart';
import 'package:students_e_learning/src/features/home/view/home_dashboard.dart';
import 'package:students_e_learning/src/features/login/view/login_screen.dart';
import 'package:students_e_learning/src/features/login/view/splash_screen.dart';
import 'package:students_e_learning/src/features/select_subject/view/select_class.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
