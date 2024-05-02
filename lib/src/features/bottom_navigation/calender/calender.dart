// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  List<String> subjectList = ['Chemistry', 'Biology', 'Physics', 'Math'];
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    String currentSubject = subjectList.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Class Calender",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay =
                      focusedDay; // update `_focusedDay` to selected day
                });
              },
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.
                return isSameDay(_selectedDay, day);
              },
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: subjectList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Card(
                        child: Container(
                          height: 90,
                          child: Center(
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 10,
                              ),
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/$index.jpg',
                                        ))),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  subjectList[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
