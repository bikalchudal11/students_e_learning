// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/home_dashboard.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_level.dart';

class SelectSubjectTest extends StatefulWidget {
  const SelectSubjectTest({super.key});

  @override
  State<SelectSubjectTest> createState() => _SelectSubjectTestState();
}

List<String> subjectList = ['Chemistry', 'Biology', 'Physics', 'Math'];

class _SelectSubjectTestState extends State<SelectSubjectTest> {
  String currentSubject = subjectList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select your Subject",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 15,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: subjectList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Card(
                        child: Container(
                          height: 90,
                          child: Center(
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 10,
                              ),
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/$index.jpg',
                                        ))),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  subjectList[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              trailing: Radio(
                                groupValue: currentSubject,
                                value: subjectList[index],
                                onChanged: (value) {
                                  setState(() {
                                    currentSubject = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => TestLevel()));
                  // print(currentSubject);
                },
                child: CustomButton(buttonName: "Next"))
          ],
        ),
      ),
    );
  }
}
