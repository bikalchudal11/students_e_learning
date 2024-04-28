import 'package:flutter/material.dart';

class MessageComponentRight extends StatelessWidget {
  final String textMsg;

  MessageComponentRight({
    Key? key,
    required this.textMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget time = Text(
      "18:13",
      style: TextStyle(
          fontSize: 10, fontWeight: FontWeight.w600, color: Colors.grey),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          SizedBox(width: 10),
          time,
          SizedBox(width: 70),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                textMsg,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
