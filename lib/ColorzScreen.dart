import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CardDesign0.dart';

class AllColors extends StatefulWidget {
  @override
  _AllColorsState createState() => _AllColorsState();
}

class _AllColorsState extends State<AllColors> {
  CardDesign1 design = new CardDesign1();

  List coList = [Colors.blueGrey, Colors.black];

  @override
  Widget build(BuildContext context) {
    setState(() {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.portraitUp]);
    });

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Choose Color of your E-Business Card',
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.transparent,
      body: Center(
        child: ListView(
          itemExtent: 90,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.withOpacity(0.1),
                )
              ]),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new RaisedButton.icon(
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
                  color: Colors.blueGrey,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('BLUE GREY'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                  )
                ]),
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.grey,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('BLACK'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.white,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 5),
                  label: Text('WHITE'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.red,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('RED'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.yellow,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('YELLOW'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.green,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('GREEN'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.blue,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('BLUE'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.brown,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('BROW'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.pink,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('PINK'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.purple,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('PURPLE'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.orange,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('ORANGE'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.indigo,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('INDIGO'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.teal,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('TEAL'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: new RaisedButton.icon(
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
                  color: Colors.lime,
                  icon: Icon(Icons.color_lens),
                  splashColor: Colors.cyan[50],
                  disabledColor: Colors.green,
                  elevation: 22,
                  animationDuration: Duration(seconds: 3),
                  label: Text('LIME'),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
