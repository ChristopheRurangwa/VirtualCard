import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgtpas extends StatefulWidget {
  @override
  _ForgtpasState createState() => _ForgtpasState();
}

class _ForgtpasState extends State<Forgtpas> {
  String password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Recover password'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
              height: 88,
            ),
            Container(

              color: Colors.cyan[50],


              child: Text('CHECK YOUR EMAIL AFTER SUBMISSION.'),),
            SizedBox(height: 45,),
            TextField(
                style: TextStyle(color: Colors.green),
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
                    ))),

            SizedBox(
              height: 30,
            ),
            RaisedButton.icon(
              onPressed: () {
                try {
                   FirebaseAuth.instance.sendPasswordResetEmail(email: email);

                  if (email != null) {
                    Navigator.pushNamed(context, '/Intro');
                  }
                  else{Navigator.pushNamed(context, '/Forgtpas');}
                } catch (e) {


                  print(e);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.greenAccent,
              icon: Icon(Icons.clear_all),
              splashColor: Colors.blueAccent,
              disabledColor: Colors.green,
              elevation: 22,
              animationDuration: Duration(seconds: 3),
              label: Text('SEND'),
            ),
          ],
        ),
      ),

    );
  }
}
