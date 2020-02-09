import 'package:flutter/material.dart';
import 'diagnosispage.dart';
import 'loggingpage.dart';
import 'locationpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 20.0);

    @override
    Widget build(BuildContext context) {

      final diagnosis_button = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.red[800],
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => DiagnosisPage(),
                )
              );
            },
          child: Text("Begin Diagnosis",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );

      final logging_button = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.red[800],
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => LoggingPage(),
                )
              );
            },
          child: Text("See Logging Track",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );

      final location_button = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.red[800],
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => LocationPage(),
                )
              );
            },
          child: Text("See Nearby News",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      );

      return Scaffold(
        resizeToAvoidBottomPadding: false, // added to avoid overflow
        body: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // horizontal
                mainAxisAlignment: MainAxisAlignment.center, //vertical
                children: <Widget>[
                  SizedBox(height: 50.0),
                  diagnosis_button,
                  SizedBox(height: 20.0),
                  logging_button,
                  SizedBox(height: 20.0,),
                  location_button,
                  SizedBox(height: 30.0,),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
