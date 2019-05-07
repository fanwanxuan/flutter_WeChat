import 'package:flutter/material.dart';
import 'package:flutter_sckoet/chat/message_data.dart';
import 'package:flutter_sckoet/chat/message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePage createState() => _MessagePage();
}

class _MessagePage extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (BuildContext context, int index) {
        return new MessageItem(messageData[index]);
      },
    );
  }
}
