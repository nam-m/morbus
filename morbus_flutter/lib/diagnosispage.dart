import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  DiagnosisPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DiagnosisPageState createState() => _DiagnosisPageState();
}
enum frequency {A, B, C}

class _DiagnosisPageState extends State<DiagnosisPage> {
  frequency _character = frequency.A;

  TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 20.0);
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text('Diagnosis Questions'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal
          mainAxisAlignment: MainAxisAlignment.start, //vertical
          children: <Widget>[
            SizedBox(height: 10.0),
            new Text('How long have you had fever?',
                      textAlign: TextAlign.start, 
                      style: style.copyWith(
                        color: Colors.black, 
                        fontWeight: FontWeight.normal
                        )
                ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.A,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("3-5 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.B,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("7+ times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.C,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),

            new Text('How long have you been coughing?',
                      textAlign: TextAlign.start, 
                      style: style.copyWith(
                        color: Colors.black, 
                        fontWeight: FontWeight.normal
                        )
                ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.A,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("3-5 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.B,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("7+ times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.C,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),

            new Text('How long have you experienced shortness of breath?',
                      textAlign: TextAlign.start, 
                      style: style.copyWith(
                        color: Colors.black, 
                        fontWeight: FontWeight.normal
                        )
                ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.A,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("3-5 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.B,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
            ListTile(
              title: Text("7+ times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: frequency.C,
                groupValue: _character,
                onChanged: (frequency value) {
                  setState(() { _character = value; });
                },
              ),
            ),
          ],
        )
      );
    }
}