// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/premium_courses/view/payment/c_p_method.dart';

class CoursePayment extends StatefulWidget {
  const CoursePayment({super.key});

  @override
  State<CoursePayment> createState() => _CoursePaymentState();
}

class _CoursePaymentState extends State<CoursePayment> {
  bool isPaypal = true;
  bool isCredit = false;
  bool isBitcoin = false;
  bool isSwitch = false;

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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              isPaypal = true;
                              isCredit = false;
                              isBitcoin = false;
                            });
                          },
                          child: PMethodBox(
                              pName: "PayPal",
                              isClicked: isPaypal,
                              pIcon: Icon(
                                Icons.paypal,
                                color: isPaypal ? Colors.white : sColor,
                              ))),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isPaypal = false;
                            isCredit = true;
                            isBitcoin = false;
                          });
                        },
                        child: PMethodBox(
                            pIcon: Icon(
                              Icons.credit_card,
                              color: isCredit ? Colors.white : sColor,
                            ),
                            pName: "Credit",
                            isClicked: isCredit),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isPaypal = false;
                            isCredit = false;
                            isBitcoin = true;
                          });
                        },
                        child: PMethodBox(
                            pIcon: Icon(
                              Icons.currency_bitcoin,
                              color: isBitcoin ? Colors.white : sColor,
                            ),
                            pName: "BitCoin",
                            isClicked: isBitcoin),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                PDetails(
                  label: "Card Number",
                  isObscure: true,
                  letterSpacing: 6,
                ),
                SizedBox(
                  height: 30,
                ),
                PDetails(
                  label: "Card holder name",
                  isObscure: false,
                  letterSpacing: 0,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(color: scaffoldBgColor),
                      child: PDetails(
                        isObscure: false,
                        letterSpacing: 0,
                        label: "Valid until",
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(color: scaffoldBgColor),
                      child: PDetails(
                        isObscure: false,
                        letterSpacing: 0,
                        label: "CVC",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Save card for future payment",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                          });
                        })
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total price: ",
                      style: TextStyle(
                        color: sColor,
                      ),
                    ),
                    Text(
                      "\$45.00",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursePaymentM()));
                    },
                    child: CustomButton(buttonName: "Proceed to pay")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PDetails extends StatelessWidget {
  double letterSpacing;
  bool isObscure;
  String label;
  PDetails(
      {super.key,
      required this.isObscure,
      required this.label,
      required this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontWeight: FontWeight.bold,
      ),
      obscureText: true,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 14),
        labelText: label,
        fillColor: scaffoldBgColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class PMethodBox extends StatelessWidget {
  String pName;
  Icon pIcon;
  bool isClicked;
  PMethodBox(
      {super.key,
      required this.pIcon,
      required this.pName,
      required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: !isClicked ? sColor : Colors.transparent),
        borderRadius: BorderRadius.circular(10),
        color: isClicked ? pColor : Colors.transparent,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            pIcon,
            Text(
              pName,
              style: TextStyle(
                fontSize: 15,
                color: isClicked ? Colors.white : sColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
