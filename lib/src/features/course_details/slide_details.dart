import 'package:flutter/material.dart';

class SlideCourseDetails extends StatelessWidget {
  const SlideCourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color grey = Color.fromARGB(255, 150, 147, 147);

    return Column(
      children: [
        SizedBox(height: 13),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 14, // Adjust the font size as needed
              color: Color.fromARGB(
                  255, 87, 85, 85), // Adjust the text color as needed
            ),
            children: [
              TextSpan(
                text:
                    "Hello everyone ready to learn ? , In this course i will take you step by step from receiving a storyboard to rendering out our final explainer video animator... ",
              ),
              TextSpan(
                text: "See more",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
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
              color: grey,
              size: 18,
            ),
            Text(
              "   338 live classes",
              style: TextStyle(fontSize: 12, color: grey),
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
              color: grey,
              size: 18,
            ),
            Text(
              "   1 hour per class",
              style: TextStyle(fontSize: 12, color: grey),
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
              color: grey,
              size: 18,
            ),
            Text(
              "   Expert Mentors",
              style: TextStyle(fontSize: 12, color: grey),
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
              color: grey,
              size: 18,
            ),
            Text(
              "   Tests & pratices",
              style: TextStyle(fontSize: 12, color: grey),
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
