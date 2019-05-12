import 'package:flutter/material.dart';
import 'package:flutter_chat/chat/message_data.dart';
import 'package:flutter_chat/common/touch_callback.dart';
import 'package:date_format/date_format.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;

  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9)))),
        height: 64.0,
        child: TouchCallback(
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 13.0, right: 13.0),
                child: Image.network(
                  message.avatar,
                  width: 48.0,
                  height: 48.0,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message.title,
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
                      maxLines: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                    ),
                    Text(
                      message.subTitle,
                      style:
                          TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsets.only(right: 12.0, top: 12.0),
                child: Text(
                  formatDate(message.time, [HH, ':', nn, ':', ss]).toString(),
                  style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                ),
              )
            ],
          ),
        )
    );
  }
}
