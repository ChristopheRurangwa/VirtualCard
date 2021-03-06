import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:math';

import 'ColorzScreen.dart';
import 'DataCollect.dart';

class CardDesign1 extends StatefulWidget {
  @override
  _CardDesign1State createState() => _CardDesign1State();
}

class _CardDesign1State extends State<CardDesign1> {
  DataCollect dataCol = DataCollect();

  int pos = 0;

  List colors = [
    Colors.white,
    Colors.cyan[50],
    Colors.cyan,
    Colors.blue,
    Colors.pink,
    Colors.lightGreen,
    Colors.deepPurpleAccent,
    Colors.yellow,
    Colors.black12,
    Colors.transparent,
    Colors.brown
  ];

  List colrs = [
    Colors.blueGrey,
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.teal,
    Colors.lime,
    Colors.transparent
  ];

  Random rand = new Random();

  Map data;

  void getData() {
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('v-cards');
      collectionReference.snapshots().listen((snapshot) {
        setState(() {
          try {
            // ignore: deprecated_member_use
            data = snapshot.documents[0].data();
          } catch (e) {
            print(e);
          }
        });
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      getData();
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color cols() {
      setState(() {
        pos = rand.nextInt(14);
      });
      return colrs[pos];
    }
    /**
     * Generate random colors
     */

    Color coleurs() {
      setState(() {
        pos = rand.nextInt(11);
      });
      return colors[pos];
    }

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                color: coleurs().withOpacity(0.6),
                blurRadius: 4,
                spreadRadius: 4,
                offset: Offset(0, 2)),
          ]),
      child: Scaffold(
        backgroundColor: cols(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Positioned(
                top: 43,
                left: 20,
                bottom: 504,
                child: Container(
                  decoration: BoxDecoration(
                      color: coleurs(),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: coleurs().withOpacity(0.6),
                            blurRadius: 4,
                            spreadRadius: 4,
                            offset: Offset(0, 2)),
                      ]),
                  width: 243,
                  height: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t PHONE\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ADDRESS\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t COMPANY\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t WEBSITE\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t E-EMAIL\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t TITLE\t\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t LAST NAME\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t FIRST NAME\t\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 320,
                left: 19,
                bottom: 130,
                child: Transform.rotate(
                  angle: 1,
                  child: RaisedButton(
                    color: coleurs(),
                    onPressed: () {
                      Navigator.pushNamed(context, '/CardDesign1')
                          .then((value) => setState(() {}));
                      setState(() {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeLeft,
                          DeviceOrientation.landscapeRight
                        ]);
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.landscapeRight,
                          DeviceOrientation.landscapeLeft
                        ]);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: coleurs(),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: coleurs().withOpacity(0.6),
                                blurRadius: 4,
                                spreadRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      width: 279,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 300,
                right: 0,
                bottom: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: coleurs(),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: coleurs().withOpacity(0.6),
                            blurRadius: 4,
                            spreadRadius: 4,
                            offset: Offset(0, 2)),
                      ]),
                  width: 400,
                  height: 0,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Center(
                      child: Text(
                        '${'\t\t\t${data['Company'].toString() == null ? data['Company'].toString() : data['Company'].toString()}\t\t\t'}',
                        style: GoogleFonts.caveat(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 45),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 290,
                left: -2,
                bottom: 299,
                child: Container(
                  width: 299, //

                  decoration: BoxDecoration(
                      color: coleurs(),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: coleurs().withOpacity(0.6),
                            blurRadius: 7,
                            spreadRadius: 4,
                            offset: Offset(0, 2)),
                      ]),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '\t\t\t ${data['Phone'].toString()}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Address'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Company'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Website'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['E-mail'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Title'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Lname'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '${'\t\t\t ${data['Fname'].toString()}\t\t'}',
                          style: GoogleFonts.caveat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  width: 243,
                  height: 440,
                  decoration: BoxDecoration(
                      color: coleurs(),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: coleurs().withOpacity(0.6),
                            blurRadius: 4,
                            spreadRadius: 4,
                            offset: Offset(0, 2)),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
