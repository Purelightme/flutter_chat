import 'package:flutter/material.dart';
import 'package:flutter_chat/contacts/contact_vo.dart';

class ContactItem extends StatelessWidget {

  ContactItem({this.item, this.titleName, this.imageName});

  final ContactVO item;

  final String titleName;

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFd9d9d9)
          )
        )
      ),
      height: 52.0,
      child: FlatButton(
          onPressed: (){},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              imageName == null ? Image.network(
                item.avatarUrl != '' ? item.avatarUrl :
                    'https://image.baidu.com/search/detail?ct=503316480&z=&tn=baiduimagedetail&ipn=d&word=%E4%BA%BA%E7%89%A9&step_word=&ie=utf-8&in=&cl=2&lm=-1&st=-1&hd=undefined&latest=undefined&copyright=undefined&cs=3587015571,1173977031&os=3820106864,3863909639&simid=535652682,3390461504&pn=136&rn=1&di=183520&ln=1456&fr=&fmq=1557660855440_R&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&is=0,0&istype=2&ist=&jit=&bdtype=11&spn=0&pi=0&gsm=5a&objurl=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F63482578.jpeg&rpstart=0&rpnum=0&adpicid=0&force=undefined'
              ,width: 36.0,height: 36.0,scale: 0.9,) :
                  Image.asset(imageName,width: 36.0,height: 36.0,),
              Container(
                margin: EdgeInsets.only(left: 12.0),
                child: Text(
                  titleName == null ? item.name ?? '暂时' : titleName,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF353535)
                  ),
                  maxLines: 1,
                ),
              )
            ],
          )
      ),
    );
  }
}
