import 'package:flutter/material.dart';

class ScrollIcon extends StatelessWidget{
  ScrollIcon([this.index = 0]);
  final int index;
  
  List<Widget> _buildScrollers() {
    List<Widget> list = [];
    for(int i = 0; i < 4; i++){
      var scroller = new Expanded(
        child: new Padding(
          padding: new EdgeInsets.all(1.0),
          child: i == index ? new Scroller(fill: true,): new Scroller(),
        ),
      );
      list.add(scroller);
    }
    return list;
  }
  
   @override
   Widget build(BuildContext context) {
     return new Container(
        width: 100.0,
        height: 10.0,
      child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: _buildScrollers(),
        ),
     );
   }
}

class Scroller extends StatelessWidget {
  Scroller({this.fill = false});
  final bool fill;
  static const color = Colors.black;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
       decoration: new BoxDecoration(
         color: fill ? color : null,
         shape: BoxShape.circle,
         border: new Border.all(
            color: Colors.black,
            width: 1.0,
          ),
       ),
    );
  }
}