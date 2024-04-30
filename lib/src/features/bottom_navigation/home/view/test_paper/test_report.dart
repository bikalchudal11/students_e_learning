import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestReport extends StatelessWidget {
  const TestReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Report",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
