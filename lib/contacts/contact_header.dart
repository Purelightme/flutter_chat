import 'package:flutter/material.dart';
import 'package:flutter_chat/contacts/contact_item.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(
          titleName: '新加好友',
          imageName: 'images/icon_addfriend.png',
        ),
        ContactItem(
          titleName: '公共聊天室',
          imageName: 'images/icon_groupchat.png',
        ),
      ],
    );
  }
}
