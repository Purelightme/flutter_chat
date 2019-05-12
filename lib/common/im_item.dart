import 'package:flutter/material.dart';
import 'package:flutter_chat/common/touch_callback.dart';

class ImItem extends StatelessWidget {

  ImItem({Key key ,@required this.title, this.imagePath, this.icon})
      :super(key:key);

  final String title;

  final String imagePath;

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TouchCallback(
      onPressed: (){
        switch(title){
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            break;
        }
      },
      child: Container(
        height: 50.0,
        margin: EdgeInsets.only(left: 22.0,right: 20.0),
        child: Row(
          children: <Widget>[
            Container(
              child: imagePath != null ?
              Image.asset(imagePath,width: 32.0,height: 32.0,) :
              SizedBox(
                width: 32.0,
                height: 32.0,
                child: icon,
              )
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF353535)
              ),
            )
          ],
        ),
      ),
    );
  }
}
