// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/home/view/home_dashboard.dart';

class SelectSubject extends StatefulWidget {
  const SelectSubject({super.key});

  @override
  State<SelectSubject> createState() => _SelectSubjectState();
}

List<String> subjectList = ['Chemistry', 'Biology', 'Physics', 'Math'];

class _SelectSubjectState extends State<SelectSubject> {
  String currentSubject = subjectList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 6,
                  width: MediaQuery.of(context).size.width * .8,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Text("Skip"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select your Class",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(pColor),
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Go Back"))),
            SizedBox(
              height: 40,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeDashBoard()));
                  // print(currentSubject);
                },
                child: CustomButton(buttonName: "Let's Go"))
          ],
        ),
      ),
    );
  }
}
