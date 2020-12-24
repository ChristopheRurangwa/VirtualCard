import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataCollect extends StatefulWidget {
  @override
  _DataCollectState createState() => _DataCollectState();
}

class _DataCollectState extends State<DataCollect> {

String _fName="";

String get fName => _fName;
  String lName="";
String title="";
String company="";
String website="";
String email="";
String phone="";
String address="";

Map data;

void retrieveData(Map val){

  CollectionReference collectionReference = FirebaseFirestore.instance.collection('v-cards');
  collectionReference.add(val);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Personal Information'),

      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 45,),


            Container(
              child: TextField(
                onChanged: (text){
                  _fName=text;
                },

                cursorColor: Colors.green,
                style: TextStyle(color: Colors.white),

                decoration: InputDecoration(

                    icon: Icon(Icons.account_circle,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'FIRST NAME',


                    hintText: 'First Name',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  lName=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.account_circle,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'LAST NAME',

                    hintText: 'Last Name ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(

                onChanged: (text){
                  title=text;
                },

                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.turned_in,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'TITLE',

                    hintText: 'Your Title ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  company=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.business,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'COMPANY',

                    hintText: 'Company Name',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  website=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.web,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'WEBSITE',

                    hintText: 'Website ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  email=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.email,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'E-MAIL',

                    hintText: 'E-mail ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  phone=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.phone_iphone,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'PHONE',

                    hintText: 'Phone ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 35,),
            Container(
              child: TextField(
                onChanged: (text){
                  address=text;
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.green,
                decoration: InputDecoration(

                    icon: Icon(Icons.home,color: Colors.green,),
                    border: OutlineInputBorder(),
                    labelText: 'STREET ADDRESS',

                    hintText: 'Street Address ',
                    labelStyle:TextStyle(color: Colors.blueAccent)
                ),

              ),),
            SizedBox(height: 50,),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child:new RaisedButton.icon(onPressed: (){
            Map<String,dynamic> val={
              'Fname':fName,
              'Lname':lName,
              'Title':title,
              'Website':website,
              'Phone':phone,
              'Company':company,
              'Address':address,
              'E-mail':email,

            };
            retrieveData(val);

            setState(() {
              SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);

            });
            Navigator.pushNamed(context, '/CardDesign1');



          },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            color: Colors.greenAccent,
            icon: Icon(Icons.clear_all),


            splashColor: Colors.blueAccent,
            disabledColor: Colors.green,
            elevation: 22,
            animationDuration: Duration(seconds: 3),
            label: Text('SUBMIT'), ),
        ),
            SizedBox(height: 50,),
          ],
        ),
      ) ,
    );
  }
}
