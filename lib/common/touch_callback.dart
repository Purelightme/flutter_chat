import 'package:flutter/material.dart';

class TouchCallback extends StatefulWidget {

  TouchCallback({
    Key key,
    @required this.child,@required this.onPressed,
    this.isFeed:true,
    this.backgroud:const Color(0xffd8d8d8)
  }):super(key:key);

  final Widget child;

  final onPressed;

  final bool isFeed;

  final Color backgroud;


  @override
  _TouchCallbackState createState() => _TouchCallbackState();
}

class _TouchCallbackState extends State<TouchCallback> {

  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d){
        if (widget.isFeed == false) return;
        setState(() {
          color = widget.backgroud;
        });
      },
      onPanCancel: (){
        setState(() {
          color = Colors.transparent;
        });
      },
    );
  }
}
