import 'package:flutter/material.dart';
import './login_display.dart';
import './profile_setup.dart';

void main() => runApp(new LogOn());

class LogOn extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      //home: new LoginDisplay(),
      home: new ProfileSetup(),
    );
  }
}
