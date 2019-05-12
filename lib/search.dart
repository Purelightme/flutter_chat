import 'package:flutter/material.dart';
import 'package:flutter_chat/common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  FocusNode focusNode = new FocusNode();

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text){
    return TouchCallback(
      isFeed: false,
      onPressed: (){},
      child: Text(text,style: TextStyle(
        fontSize: 14.0,
        color: Color(0xff1aad19)
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchCallback(
                  isFeed: false,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: EdgeInsets.only(left: 12.0,right: 10.0),
                    child: Icon(Icons.chevron_left,color: Colors.black,),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: EdgeInsets.only(left: 50.0,right: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color: Colors.green
                          )
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          focusNode: _requestFocus(),
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black
                          ),
                          onChanged: (String text){

                          },
                          decoration: InputDecoration(
                              hintText: '搜索',
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.mic,color: Color(0xffaaaaaa),),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Text('常用搜索',style: TextStyle(
                fontSize: 16.0,
                color: Color(0xffb5b5b5)
              ),),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0,right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('PHP')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

