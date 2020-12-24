import 'package:ebusinesscard/CardDesign0.dart';
import 'package:ebusinesscard/DataCollect.dart';
import 'package:ebusinesscard/signUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ColorzScreen.dart';
import 'Forgtpas.dart';
import 'Intro.dart';
import 'controlSys.dart';

void main() {
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/Controls', routes: {
      '/Forgtpas': (context) => Forgtpas(),
      '/Controls': (context) => Controls(),
      '/SignUp': (context) => SignUp(),
      '/Intro': (context) => IntroScreen(),
      '/ColorzScreen': (context) => AllColors(),
      '/DataCollect': (context) => DataCollect(),
      '/CardDesign1': (context) => CardDesign1(),
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '',
            ),
          ],
        ),
      ),
    );
  }
}
