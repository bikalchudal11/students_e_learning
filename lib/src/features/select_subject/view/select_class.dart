// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/home_dashboard.dart';
import 'package:students_e_learning/src/features/select_subject/view/select_subject.dart';

class SelectClass extends StatefulWidget {
  const SelectClass({super.key});

  @override
  State<SelectClass> createState() => _SelectClassState();
}

List<String> classList = ['9th', '10th', '11th', '12th'];

class _SelectClassState extends State<SelectClass> {
  String currentClass = classList.first;
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
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDashBoard()));
                    },
                    child: Text("Skip")),
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
                  itemCount: classList.length,
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
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: pColor,
                                ),
                                height: 35,
                                width: 35,
                                child: Center(
                                  child: Text(
                                    '${index + 8}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  classList[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              trailing: Radio(
                                groupValue: currentClass,
                                value: classList[index],
                                onChanged: (value) {
                                  setState(() {
                                    currentClass = value!;
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
                  // print(currentClass);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SelectSubject()));
                },
                child: CustomButton(buttonName: "Let's Go"))
          ],
        ),
      ),
    );
  }
}
