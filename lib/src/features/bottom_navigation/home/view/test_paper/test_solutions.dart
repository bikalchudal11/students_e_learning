// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TestSolutions extends StatefulWidget {
  const TestSolutions({super.key});

  @override
  State<TestSolutions> createState() => _TestSolutionsState();
}

bool ansShow = true;

class _TestSolutionsState extends State<TestSolutions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Solutions",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                ansShow = !ansShow;
              });
            },
            child: Text(
              ansShow ? "Collapse All" : "Expand All",
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
      body: Center(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return QuestionAnswer(
                  index: index + 1,
                );
              })),
    );
  }
}

class QuestionAnswer extends StatelessWidget {
  int index;
  QuestionAnswer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questions $index/20",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                ansShow
                    ? SizedBox()
                    : Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("What is the part of animal cell that is \nlabelled by A?"),
            SizedBox(
              height: 15,
            ),
            ansShow
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Answer:",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("33/4 ÷ 4 pounds."),
                      SizedBox(
                        height: 5,
                      ),
                      Text("- (4 x 3 + 3)/4 ÷ 4 pounds."),
                      SizedBox(
                        height: 5,
                      ),
                      Text("- 15/4 ÷ 4 pounds."),
                      SizedBox(
                        height: 5,
                      ),
                      Text("- 15/4 ÷ 1/4 pounds."),
                      SizedBox(
                        height: 5,
                      ),
                      Text("- 15/16 pounds."),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Now we know that 1 pound = 16 ounces,\nTherefore 1.")
                    ],
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
