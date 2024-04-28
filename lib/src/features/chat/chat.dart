import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/chat/message_component.dart';
import 'package:students_e_learning/src/features/chat/message_componrntRight.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.y3pF2wy77QRfVCAjw5GCIAHaNK?w=117&h=209&c=7&r=0&o=5&pid=1.7"),
          ),
          title: Text(
            "Kristan tyl",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "online",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        actions: [
          Icon(Icons.call),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.video_call),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Divider(),
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Write your message...',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 1,
                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
