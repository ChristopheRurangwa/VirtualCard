import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Controls extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

class _ControlsState extends State<Controls> {
  Color col;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'VIRTUAL CARD',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/CardDesign1');
                setState(() {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                    DeviceOrientation.landscapeRight
                  ]);
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.greenAccent,
              icon: Icon(Icons.cached),
              splashColor: Colors.blueAccent,
              disabledColor: Colors.green,
              elevation: 22,
              animationDuration: Duration(seconds: 3),
              label: Text('Previous Card'),
            ),
            SizedBox(
              height: 50,
            ),
            new RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/DataCollect');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.greenAccent,
              icon: Icon(Icons.chrome_reader_mode),
              splashColor: Colors.blueAccent,
              disabledColor: Colors.green,
              elevation: 22,
              animationDuration: Duration(seconds: 3),
              label: Text('Create Card'),
            ),
            SizedBox(
              height: 50,
            ),
            new RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Intro');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.red,
              icon: Icon(Icons.exit_to_app),
              textColor: Colors.white,
              splashColor: Colors.blueAccent,
              disabledColor: Colors.red,
              elevation: 22,
              animationDuration: Duration(seconds: 3),
              label: Text('Exit'),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
