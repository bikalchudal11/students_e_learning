// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/home_appbar_icon.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/calender/calender.dart';
import 'package:students_e_learning/src/features/chat/chat.dart';
import 'package:students_e_learning/src/features/play/play.dart';

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

  navigate() {
    switch (_selectedIndex) {
      case 0:
        return HomeDashBoard();
      case 1:
        return PlayPage();
      case 2:
        return CalenderPage();
      case 3:
        return ChatPage();
      default:
        return Text("not found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Bikal!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.waving_hand,
                            color: Colors.deepOrange,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      HomeAppbarIcon(
                        iconName: Icon(
                          Icons.search,
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      HomeAppbarIcon(
                        iconName: Icon(
                          Icons.person,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              navigate()
            ],
          ),
        ),
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
              label: "Play",
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
      ),
    );
  }
}
