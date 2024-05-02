// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/home_appbar_icon.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/calender/calender.dart';
import 'package:students_e_learning/src/features/bottom_navigation/chat/chat_page.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/home_content.dart';
import 'package:students_e_learning/src/features/bottom_navigation/my_courses/MyCoursesPage.dart';

class HomeDashBoard extends StatefulWidget {
  const HomeDashBoard({super.key});

  @override
  State<HomeDashBoard> createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomeContent(),
        MyCoursesPage(),
        CalenderPage(),
        ChatPage(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: sColor,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "My Courses",
            icon: Icon(
              Icons.play_circle,
            ),
          ),
          BottomNavigationBarItem(
            label: "Calender",
            icon: Icon(
              Icons.calendar_month,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat,
            ),
          ),
        ],
      ),
    );
  }
}
