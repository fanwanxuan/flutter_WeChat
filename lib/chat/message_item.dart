import 'package:flutter/material.dart';
import './message_data.dart';
import '../common/touch_callback.dart';
import 'package:date_format/date_format.dart';

class MessageItem extends StatelessWidget {
  final MessageData messageData;
  MessageItem(this.messageData);
  var num = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey[200])),
      ),
      height: 64,
      child: TouchCallback(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.asset(messageData.avatar, width: 48, height: 48),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    messageData.type == MessageType.CHAT
                        ? messageData.title
                        : messageData.title + ('($num)'),
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff353535),
                    ),
                    maxLines: 1,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 8)),
                  Text(
                    messageData.subTitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffa9a9a9),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(top: 12, right: 12),
              child: Text(
                  formatDate(messageData.time, [hh, ':', nn, ':', 'ss'])
                      .toString(),
                  style: TextStyle(fontSize: 14, color: Color(0xffa9a9a9))),
            )
          ],
        ),
      ),
    );
  }
}
