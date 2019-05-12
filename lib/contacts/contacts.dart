import 'package:flutter/material.dart';
import 'package:flutter_chat/contacts/contact_header.dart';
import 'package:flutter_chat/contacts/contact_item.dart';
import 'package:flutter_chat/contacts/contact_slider_ist.dart';
import 'package:flutter_chat/contacts/contact_vo.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSliderList(
        items: contactData,
        headerBuilder: (BuildContext context,int index){
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext context,int index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index],),
          );
        },
        sectionBuilder: (BuildContext context,int index){
          return Container(
            height: 32.0,
            padding: EdgeInsets.only(left: 14.0),
            color: Colors.grey[200],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff909090)
              ),
            ),
          );
        },
      ),
    );
  }
}

