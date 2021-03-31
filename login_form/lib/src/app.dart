import 'package:flutter/material.dart';
import '../src/screen/login_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('saiihok form'),
        ),
        body: Loginform(),
      ),
    );
  }
}
