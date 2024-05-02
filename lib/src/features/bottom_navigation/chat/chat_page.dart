// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/components/message_component.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/core/components/message_componrntRight.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        title: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(network_img_url),
          ),
          title: Text(
            "Kristan tyl",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "online",
            style: TextStyle(
              color: sColor,
            ),
          ),
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.video_call),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MessageComponent(textMsg: "Hi this is Sumit"),
            MessageComponentRight(
                textMsg:
                    "hello there buddy ,Nothing just chilling and watching youtube. What about you"),
            MessageComponent(
                textMsg:
                    "Same here ! Been Watching Youtube for past 5 hours despite ."),
            MessageComponent(textMsg: "Its hard to be productive"),
            MessageComponentRight(
                textMsg: "Yeah I know i am in the same position"),
            MessageComponent(textMsg: "Yeah Man"),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Write your message...',
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                prefixIcon: Icon(
                  Icons.add_circle_rounded,
                  size: 30,
                ),
                suffixIcon: Transform.rotate(
                  angle: 100,
                  child: Icon(
                    Icons.send,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
