// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_mentor.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_subject.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/slide_details.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

bool isDetails = true;
bool isSubject = false;
bool isMentors = false;
CourseView() {
  if (isSubject == true) {
    return SlideCourseSubject();
  }
  if (isMentors == true) {
    return SlideCourseMentor();
  }
  if (isDetails == true) {
    return SlideCourseDetails();
  }
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Details about course",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 190,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: sColor.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.pause_circle_outline_sharp,
                              size: 30,
                              color: sColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Preview"),
                            SizedBox(
                              width: 95,
                            ),
                            Icon(
                              Icons.volume_off_rounded,
                              color: sColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.fullscreen_rounded, color: sColor)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(network_img_url),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.play_circle_outline_rounded,
                        size: 40,
                        color: Color.fromARGB(255, 231, 222, 222),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Intermediate Full Class",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      size: 15,
                      color: sColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "12 Lesson",
                      style: TextStyle(color: sColor, fontSize: 12),
                    ),
                    SizedBox(width: 7),
                    Icon(
                      Icons.circle,
                      size: 4,
                      color: sColor,
                    ),
                    SizedBox(width: 7),
                    Icon(
                      Icons.timer_outlined,
                      size: 14,
                      color: sColor,
                    ),
                    SizedBox(width: 2),
                    Text("6 months",
                        style: TextStyle(color: sColor, fontSize: 12))
                  ],
                ),
                SizedBox(height: 14),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    color: Color.fromARGB(255, 218, 212, 212),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              isDetails = true;
                              isSubject = false;
                              isMentors = false;
                            },
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              color: (!isDetails)
                                  ? Color.fromARGB(255, 218, 212, 212)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Center(
                              child: Text(
                                "Details",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              isMentors = true;
                              isSubject = false;
                              isDetails = false;
                            },
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: (!isMentors)
                                ? Color.fromARGB(255, 218, 212, 212)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Mentors",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              isSubject = true;
                              isMentors = false;
                              isDetails = false;
                            },
                          );
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: (!isSubject)
                                ? Color.fromARGB(255, 218, 212, 212)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Subjects",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CourseView(),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Text(
                          "Admission Fee",
                          style: TextStyle(
                            fontSize: 10,
                            color: sColor,
                          ),
                        ),
                        Text(
                          '\$765.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          color: pColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Get admitted",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
