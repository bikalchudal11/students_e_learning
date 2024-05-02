// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_rules.dart';

class TestLevel extends StatefulWidget {
  const TestLevel({super.key});

  @override
  State<TestLevel> createState() => _TestLevelState();
}

class _TestLevelState extends State<TestLevel> {
  RangeValues _values = const RangeValues(0, 1);

  List<String> _labels = ['Easy', 'Medium', 'Hard', 'Pro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Text paper",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Choose your level",
                style: TextStyle(
                  fontSize: 15,
                  color: sColor,
                ),
              ),
            ],
          )),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          book_img_url,
                        ),
                      ),
                    ),
                  ),
                  RangeSlider(
                    min: 0,
                    values: _values,
                    max: 3,
                    divisions: 3,
                    labels: RangeLabels(
                      _labels[_values.start.toInt()],
                      _labels[_values.end.toInt()],
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Easy'),
                      Text('Medium'),
                      Text('Hard'),
                      Text('Pro'),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => TestRules()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CustomButton(buttonName: "Next"),
                ))
          ],
        ),
      ),
    );
  }
}
