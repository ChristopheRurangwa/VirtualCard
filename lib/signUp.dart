import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String password = "";
    String email = "";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Register Here'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
              height: 88,
            ),
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
            TextField(
                obscureText: true,
                style: TextStyle(color: Colors.green),
                onChanged: (value) {
                  password = value;
                },
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.business_center,
                      color: Colors.green,
                    ),
                    hintText: 'password',
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      color: Colors.blueAccent,
                    ))),
            SizedBox(
              height: 30,
            ),
            RaisedButton.icon(
              onPressed: () async {
                try {
                  final User user = (await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email, password: password))
                      .user;
                  if (user != null) {
                    Navigator.pushNamed(context, '/Controls');
                  }
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
              label: Text('REGISTER'),
            ),
          ],
        ),
      ),
    );
  }
}
