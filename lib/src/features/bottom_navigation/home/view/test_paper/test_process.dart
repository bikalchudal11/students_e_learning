// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/components/homepage_timer_container.dart';
import 'package:students_e_learning/src/core/components/submit_sliding_sheet.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class TestProcess extends StatefulWidget {
  const TestProcess({super.key});

  @override
  State<TestProcess> createState() => _TestProcessState();
}

List<String> answerList = [
  'A. Cell membrane',
  'B. Chloroplast',
  'C. Nucleus',
  'D. Fat'
];

class _TestProcessState extends State<TestProcess> {
  String currentSubject = answerList.first;
  var currentAnswer = answerList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Biology",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            children: [
              HomepageTimerContainer(
                textColor: Colors.white,
                containerColor: sColor,
                num: 00,
              ),
              SizedBox(
                width: 1,
              ),
              HomepageTimerContainer(
                textColor: Colors.white,
                containerColor: sColor,
                num: 10,
              ),
              SizedBox(
                width: 1,
              ),
              HomepageTimerContainer(
                textColor: Colors.white,
                containerColor: sColor,
                num: 30,
              ),
              SizedBox(
                width: 1,
              ),
            ],
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Questions 20/20",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("What is the part of animal cell that is \nlabelled by A?"),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: answerList.length,
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
                              leading: Text(
                                "${index + 1}.",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  answerList[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              trailing: Radio(
                                groupValue: currentAnswer,
                                value: answerList[index],
                                onChanged: (value) {
                                  setState(() {
                                    currentAnswer = value!;
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
                  showAsBottomSheet(context);
                },
                child: CustomButton(buttonName: "Next"))
          ],
        ),
      ),
    );
  }

  void showAsBottomSheet(BuildContext context) async {
    final result = await showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
            elevation: 8,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.4, 0.7, 1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            builder: (context, state) {
              return SubmitSlidingSheet();
            });
      },
    );
  }
}
