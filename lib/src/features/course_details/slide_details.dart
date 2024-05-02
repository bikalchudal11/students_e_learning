// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';

class SlideCourseDetails extends StatelessWidget {
  const SlideCourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text:
                    "Hello everyone ready to learn ? , In this course i will take you step by step from receiving a storyboard to rendering out our final explainer video animator... ",
              ),
              TextSpan(
                text: "See more",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: pColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.remove_red_eye_outlined,
              size: 22,
            ),
            Text(
              "   338 live classes",
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Icon(
              Icons.timer_outlined,
              size: 22,
            ),
            Text(
              "   1 hour per class",
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Icon(
              Icons.person_outline_rounded,
              size: 22,
            ),
            Text(
              "   Expert Mentors",
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Icon(
              Icons.question_mark_rounded,
              size: 22,
            ),
            Text(
              "   Tests & pratices",
            ),
          ],
        ),
        SizedBox(
          height: 9,
        )
      ],
    );
  }
}
