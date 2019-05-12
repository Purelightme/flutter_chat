import 'package:flutter/material.dart';
import 'package:flutter_chat/app.dart';
import 'package:flutter_chat/loading.dart';
import 'package:flutter_chat/search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '聊天室',
    theme: mDefaultTheme,
    routes: <String, WidgetBuilder>{
      'app': (BuildContext context) => App(),
      '/friends': (BuildContext context) => WebviewScaffold(
        url: 'http://www.baidu.com/',
        appBar: AppBar(
          title: Text('百度一下'),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      'search': (BuildContext context) => Search()
    },
    home: LoadingPage(),
  )
);

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.green,
  cardColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb)
);