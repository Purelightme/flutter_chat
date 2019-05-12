import 'package:flutter/material.dart';
import 'package:flutter_chat/common/im_item.dart';
import 'package:flutter_chat/common/touch_callback.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallback(
              onPressed: (){},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset('images/yixiu.jpeg',width: 70.0,height: 70.0,),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Purelightme',style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF353535)
                        ),),
                        Text('账号 316541',style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFa9a9a9)
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset('images/code.png',width: 24.0,height: 24.0,),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_me_message.png',
                  title: '消息管理',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_photo.png',
                  title: '我的相册',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_file.png',
                  title: '我的文件',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_service.png',
                  title: '联系客服',
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(title: '清理缓存',imagePath: 'images/icon_me_clear.png',),
          )
        ],
      ),
    );
  }
}
