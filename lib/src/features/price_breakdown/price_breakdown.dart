import 'package:flutter/material.dart';

class PriceBreakdown extends StatelessWidget {
  const PriceBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 240, 239, 239),
        title: Text(
          "Price Breakdown",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                newMethod('Expiration', '6 month'),
                newMethod('Addmission Fee', '\$765.09'),
                newMethod('Subjects', '11'),
                newMethod('Taxes', '\$56.56'),
                newMethod('Discounts', '\$10.45'),
              ],
            ),
          )),
    );
  }

  Row newMethod(String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(9),
          child: Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Text(
            subTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
