import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageSender, messageText;

  MessageBubble({@required this.messageSender, @required this.messageText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 16.0, 8.0, 0.0),
          child: Text(
            messageSender,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                messageText,
                style: TextStyle(
                  color: Colors.white,
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
