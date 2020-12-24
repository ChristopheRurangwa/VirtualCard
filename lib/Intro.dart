import 'dart:math';
import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int index = 0;

  List photo = [
    'phot/pexels-karolina-grabowska-4466420.jpg',
    'phot/tower.jpg',
    'phot/base.jpg',
    'phot/carte.jpg',
    'phot/pixel.jpg',
    'phot/wire.jpg',
    'phot/deva.jpg',
    'phot/board.jpg'
  ];

  Random rad = new Random();

  @override
  Widget build(BuildContext context) {
    String password = "";
    String email = "";
    User user1;

    setState(() {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    });
    index = rad.nextInt(8);
    return Scaffold(
      appBar: AppBar(
        title: Text('E-BUSINESS-CARD'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.cyan[50],
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
                child: Container(
                  height: 267,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black,
                      width: 15,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Image(
                        image: new AssetImage(photo[index]),
                        fit: BoxFit.fill,
                        width: 500,
                        height: 350),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    hintText: 'e-mail',
                    border: OutlineInputBorder(),
                    labelText: 'E-MAIL',
                    labelStyle: TextStyle(
                      color: Colors.blueAccent,
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.business_center,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD',
                    hintText: 'Password',
                    labelStyle: TextStyle(color: Colors.blueAccent)),
                obscureText: true,
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.cyan[50],
                  width: 150,
                  height: 60,
                  child: new RaisedButton.icon(
                    onPressed: () async {
                      try {
                        final User user = (await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email, password: password))
                            .user;
                        if (user != null) {
                          Navigator.pushNamed(context, '/Controls');
                        }
                      } catch (t) {
                        print(t);
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.greenAccent,
                    icon: Icon(Icons.clear_all),
                    splashColor: Colors.blueAccent,
                    disabledColor: Colors.green,
                    elevation: 18,
                    animationDuration: Duration(seconds: 3),
                    label: Text('LOGIN'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.cyan[50],
                  width: 270,
                  height: 60,
                  child: new RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.greenAccent,
                    icon: Icon(Icons.clear_all),
                    splashColor: Colors.blueAccent,
                    disabledColor: Colors.green,
                    elevation: 22,
                    animationDuration: Duration(seconds: 3),
                    label: Text('SIGN UP'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                color: Colors.cyan[50],
                width: 150,
                height: 60,
                child: new RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Forgtpas');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.cyan[50],
                    icon: Icon(Icons.clear_all),
                    splashColor: Colors.blueAccent,
                    disabledColor: Colors.green,
                    elevation: 18,
                    animationDuration: Duration(seconds: 3),
                    label: Text(
                      'FORGOT PASSWORD',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    )),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
