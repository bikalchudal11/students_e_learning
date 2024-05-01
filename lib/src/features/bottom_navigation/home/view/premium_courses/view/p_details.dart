// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/components/premium_courses_teacher_container.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/payment/course_payment.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/review_view.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/detail_view.dart';

class PDetails extends StatefulWidget {
  const PDetails({super.key});

  @override
  State<PDetails> createState() => _PDetailsState();
}

bool isDetailOn = true;
bool isReviewOn = false;

class _PDetailsState extends State<PDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        title: Text(
          "Detail About Course",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                PremiumCoursesTeacherContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(network_img_url2),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jhonny Depp",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "English Teacher",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: sColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isDetailOn = true;
                                      isReviewOn = false;
                                    });
                                  },
                                  child: CourseSwitchContainer(
                                    color: isDetailOn
                                        ? Colors.white
                                        : Colors.transparent,
                                    name: "Details",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isDetailOn = false;
                                      isReviewOn = true;
                                    });
                                  },
                                  child: CourseSwitchContainer(
                                    color: isReviewOn
                                        ? Colors.white
                                        : Colors.transparent,
                                    name: "Reviews",
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CoursePayment()));
                },
                child: CustomButton(
                  buttonName: "Buy Now",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showView() {
    if (isDetailOn) {
      return DetailView();
    } else {
      return ReviewView();
    }
  }
}

class CourseSwitchContainer extends StatelessWidget {
  Color color;
  String name;
  CourseSwitchContainer({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 30,
      width: MediaQuery.of(context).size.width * 0.34,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(name),
      ),
    );
  }
}
