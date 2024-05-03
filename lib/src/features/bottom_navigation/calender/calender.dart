import 'package:flutter/material.dart';
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
            style: TextStyle(fontSize: 18),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://th.bing.com/th/id/R.ee2256b1de5b9256a084cbd14beee6bc?rik=fbyd%2bzeuXfUznw&riu=http%3a%2f%2fchoosewashingtonstate.com%2fwp-content%2fuploads%2f2017%2f09%2fchemistry.jpg&ehk=lrKH9jWNXPxRy0hWB1akEV%2fp0%2fKfiRfMd94DoktTrJA%3d&risl=&pid=ImgRaw&r=0',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Chemestry",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Chapter 2 :  ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              TextSpan(
                                  text: "Organic",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 68, 66, 66),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "12:40-1:40 pm",
                          style: TextStyle(color: Colors.grey, fontSize: 9),
                        )
                      ],
                    ),
                    SizedBox(width: 40),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
