import 'package:flutter/material.dart';

class PriceBreakdown extends StatelessWidget {
  const PriceBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 240, 239, 239),
        title: Text(
          "Price Breakdown",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
