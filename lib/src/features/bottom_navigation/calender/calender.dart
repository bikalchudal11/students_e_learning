import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/bottom_navigation/calender/calender_course-component.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 244, 244),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 247, 244, 244),
          toolbarHeight: 70,
          title: Text(
            "Class Calender",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(1990, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              SizedBox(height: 15),
              Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CalenderComponent(
                        chapterName: 'Organic',
                        subName: 'Chemestry',
                        subImgUrl:
                            'https://th.bing.com/th/id/R.ee2256b1de5b9256a084cbd14beee6bc?rik=fbyd%2bzeuXfUznw&riu=http%3a%2f%2fchoosewashingtonstate.com%2fwp-content%2fuploads%2f2017%2f09%2fchemistry.jpg&ehk=lrKH9jWNXPxRy0hWB1akEV%2fp0%2fKfiRfMd94DoktTrJA%3d&risl=&pid=ImgRaw&r=0',
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
