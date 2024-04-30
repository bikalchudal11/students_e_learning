// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';

class SubmitSlidingSheet extends StatelessWidget {
  const SubmitSlidingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close),
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.text_snippet,
                    size: 120,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Submit Exam?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Hey, Are you sure you want to submit this exam",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(buttonName: "Yes")
          ],
        ),
      ),
    );
  }
}
