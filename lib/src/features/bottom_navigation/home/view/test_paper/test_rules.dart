// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_process.dart';

class TestRules extends StatelessWidget {
  const TestRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Declaration",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Instructions to follow",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReuseableRow(
                      content:
                          "Keep an eye on the countdown.Give the \nanswers before the time run out."),
                  SizedBox(
                    height: 15,
                  ),
                  ReuseableRow(
                      content:
                          "Rough notebooks, geometry, notebooks, \ngraphs etc. should be kept with you \nbefore starting the test."),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Exam:"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "/01/GDM/Biology",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Subject:"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Biology",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("questions,"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            " 20",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("marks,"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            " 20",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("minutes"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestProcess()));
                },
                child: CustomButton(buttonName: "I understood"))
          ],
        ),
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  String content;
  ReuseableRow({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
        ),
        SizedBox(
          width: 15,
        ),
        Text(content)
      ],
    );
  }
}
