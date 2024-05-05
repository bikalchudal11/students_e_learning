// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/components/home_appbar_icon.dart';
import 'package:students_e_learning/src/core/components/homepage_timer_container.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/components/class_container.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/components/live_courses_container.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/components/premium_courses_container.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/drawer/drawer_content.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/live_courses_list.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/p_details.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/premium_courses_list_details.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/select_subject_test.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/course_details.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: scaffoldBgColor,
        title: Column(
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
            ),
          ],
        ),
        actions: [
          HomeAppbarIcon(
            iconName: Icon(
              Icons.search,
              size: 28,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(network_img_url2),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawer(
        child: DrawerContent(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                    color: lightPurple,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.school,
                            size: 28,
                          ),
                          Row(
                            children: [
                              HomepageTimerContainer(
                                textColor: Colors.black,
                                containerColor: Colors.white,
                                num: 00,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              HomepageTimerContainer(
                                textColor: Colors.black,
                                containerColor: Colors.white,
                                num: 10,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              HomepageTimerContainer(
                                textColor: Colors.black,
                                containerColor: Colors.white,
                                num: 30,
                              ),
                              SizedBox(
                                width: 1,
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Math class",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "starting soon",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomButton(buttonName: 'Join class')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Today's Class",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClassContainer(eachClass: "Biology", time: "1:00h"),
                    ClassContainer(eachClass: "Biology", time: "1:00h"),
                    ClassContainer(eachClass: "Biology", time: "1:00h"),
                    ClassContainer(eachClass: "Biology", time: "1:00h"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //Test Exam paper
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectSubjectTest()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15),
                ),
                contentPadding: EdgeInsets.all(10),
                tileColor: lightPurple,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Icon(
                    Icons.text_snippet,
                    size: 50,
                  ),
                ),
                title: Text(
                  "Test Exam",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "Let's check your \npreparation",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //premium courses
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Premium",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        " Courses",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PremiumCoursesListDetails()));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(color: sColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PDetails()));
                        },
                        child: PremiumCourseContainer()),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PDetails()));
                        },
                        child: PremiumCourseContainer()),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //live courses
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Live",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        " Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LiveCoursesListDetails()));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(color: sColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CourseDetails()));
                        },
                        child: LiveCoursesContainer()),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CourseDetails()));
                        },
                        child: LiveCoursesContainer()),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CourseDetails()));
                        },
                        child: LiveCoursesContainer()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
