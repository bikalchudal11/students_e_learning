import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessageComponent extends StatelessWidget {
  final String textMsg;

  MessageComponent({
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
    Widget img = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            "https://th.bing.com/th/id/OIP.6SSqnF0j1IvtQdmxcdrxFgHaE8?w=255&h=180&c=7&r=0&o=5&pid=1.7"),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          img,
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 219, 219),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                textMsg,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 19,
          ),
          time
        ],
      ),
    );
  }
}
