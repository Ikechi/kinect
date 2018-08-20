import 'package:flutter/material.dart';
import './scroll_icon.dart';

class LoginDisplay extends StatefulWidget {
  @override
  LoginDisplayState createState() => new LoginDisplayState();
}

class LoginDisplayState extends State<LoginDisplay> {
  final Color backgroundColor = Colors.purple[300]; //blue[100];

  var countState = 0;
  List<String> loginImages = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image2.jpg'
  ];

  void _changeCount() {
    setState(() => countState = countState < 3 ? countState + 1 : 0);
    print(countState);
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: double.INFINITY,
        height: double.INFINITY,
        color: backgroundColor,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(
                      top: 50.0,
                      bottom: 80.0,
                    ),
                    child: new DescriptionText(
                      description: 'Connect with your reality',
                    ),
                  ),
                  new WelcomePhoto(image: loginImages[countState]),
                  new Padding(
                    padding: new EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: new ScrollIcon(countState),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(
                top: 25.0,
                bottom: 30.0,
              ),
              child: new LoginButton(onPressed: _changeCount),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  DescriptionText({this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return new Text(
      description,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.display1,
    );
  }
}

class WelcomePhoto extends StatelessWidget {
  WelcomePhoto({this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          image: new DecorationImage(
            image: new AssetImage(image),
            fit: BoxFit.cover,
          ),
          border: new Border.all(
            color: Colors.black,
            width: 0.5,
          )),
    );
  }
}

class LoginButton extends StatelessWidget {
  LoginButton({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final TextTheme buttonTextTheme = Theme.of(context).textTheme.apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
          fontSizeFactor: 1.5,
        );
    return new Container(
      width: 300.0,
      child: new RaisedButton.icon(
        onPressed: onPressed,
        color: Colors.black87,
        icon: new Image.asset('assets/fb_white.png', scale: 5.0),
        label: new Text(
          'Continue with Facebook',
          style: buttonTextTheme.button,
        ),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
