import 'package:flutter/material.dart';

class ProfileSetup extends StatelessWidget {
  final Color backgroundColor = Colors.white;

  Widget build(BuildContext context){
    return new Center(
      //widthFactor: double.INFINITY,
      child: new Container(
        width: double.INFINITY,
        color: backgroundColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Text(
                'Hi, Ikechi',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddPictureBox extends StatelessWidget {
  final String text = 'Add a Photo';

  final buttonIcon = new IconButton(
    color: Colors.black,
    icon: new Icon(Icons.add),
    iconSize: 80.0,
    onPressed: () {},
    tooltip: '''Adds a new image to your profile. If it's your first, it'll automatically become your public display picture.''',
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Material(
        elevation: 2.0,
        child: buttonIcon,
      ),
    );
  }
}