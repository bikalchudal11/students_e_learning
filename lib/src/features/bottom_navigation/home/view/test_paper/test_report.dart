// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_solutions.dart';

class TestReport extends StatelessWidget {
  const TestReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Report",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestSolutions()));
              },
              child: CustomButton(buttonName: "See thee answer")),
        ],
      ),
    );
  }
}
