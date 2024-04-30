// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/home_dashboard.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/home_content.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/select_subject_test.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_solutions.dart';

class TestReport extends StatelessWidget {
  const TestReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeContent()));
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          "Test Report",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "75%",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "accuracy",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: CircularProgressIndicator(
                        value: 75 / 100,
                        strokeWidth: 10,
                        backgroundColor: Colors.red,
                        valueColor: AlwaysStoppedAnimation<Color>(pColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ResultRow(
                      name: "Correct",
                      circleColor: pColor,
                    ),
                    ResultRow(
                      name: "Incorrect",
                      circleColor: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: scaffoldBgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SummaryRow(
                          title: "Total questions:",
                          ans: "20",
                        ),
                        SummaryRow(
                          title: "Answered:",
                          ans: "14",
                        ),
                        SummaryRow(
                          title: "Correct:",
                          ans: "10",
                        ),
                        SummaryRow(
                          title: "Incorrect",
                          ans: "4",
                        ),
                        SummaryRow(
                          title: "Skipped:",
                          ans: "6",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestSolutions()));
                },
                child: CustomButton(buttonName: "See the answer")),
          ],
        ),
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  String title, ans;
  SummaryRow({super.key, required this.title, required this.ans});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(ans),
      ],
    );
  }
}

class ResultRow extends StatelessWidget {
  String name;
  Color circleColor;
  ResultRow({super.key, required this.name, required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 13,
          color: circleColor,
        ),
        SizedBox(
          width: 8,
        ),
        Text(name),
      ],
    );
  }
}
