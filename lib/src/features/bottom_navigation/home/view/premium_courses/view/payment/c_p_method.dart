// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/components/submit_sliding_sheet.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/payment/payment_confirm.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class CoursePaymentM extends StatefulWidget {
  const CoursePaymentM({super.key});

  @override
  State<CoursePaymentM> createState() => _CoursePaymentMState();
}

class _CoursePaymentMState extends State<CoursePaymentM> {
  bool creditCard = true;
  bool visaCard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Method",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: CircleAvatar(
                      child: Image(
                          image: NetworkImage(
                              'https://www.mastercard.com/content/dam/public/mastercardcom/us/en/logos/mastercard-og-image.png')),
                    ),
                    title: Text(
                      "Credit Card",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "x x x x  x x x x  8 8 9 2",
                      style: TextStyle(
                        fontSize: 13,
                        color: sColor,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          creditCard = true;
                          visaCard = false;
                        });
                      },
                      icon: creditCard
                          ? Icon(
                              Icons.circle,
                              color: pColor,
                            )
                          : Icon(
                              Icons.circle_outlined,
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: CircleAvatar(
                      child: Image(
                          image: NetworkImage(
                              'https://1000logos.net/wp-content/uploads/2021/11/VISA-logo.png')),
                    ),
                    title: Text(
                      "Visa Card",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "x x x x  x x x x  2 5 0 9",
                      style: TextStyle(
                        fontSize: 13,
                        color: sColor,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          creditCard = false;
                          visaCard = true;
                        });
                      },
                      icon: visaCard
                          ? Icon(
                              Icons.circle,
                              color: pColor,
                            )
                          : Icon(
                              Icons.circle_outlined,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
                onTap: () {
                  showAsBottomSheet(context);
                },
                child: CustomButton(buttonName: "Pay"))
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
              return PaymentConfirm();
            });
      },
    );
  }
}
