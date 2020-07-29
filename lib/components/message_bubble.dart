import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageSender, messageText;
  final bool isMe;

  MessageBubble({this.messageSender, @required this.messageText, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
          child: Text(
            isMe ? '' : messageSender,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(16.0) : Radius.circular(0.0),
              topRight: isMe ? Radius.circular(0.0) : Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                messageText,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
