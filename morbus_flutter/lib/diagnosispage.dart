import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  DiagnosisPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DiagnosisPageState createState() => _DiagnosisPageState();
}
enum fever_freq {A, B, C}
enum cough_freq {A, B, C}
enum breath_freq {A, B, C}

class _DiagnosisPageState extends State<DiagnosisPage> {
  fever_freq _character1 = fever_freq.A;
  cough_freq _character2 = cough_freq.A;
  breath_freq _character3 = breath_freq.A;

  TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 20.0);
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomPadding: false,
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
            SizedBox(height: 0.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: fever_freq.A,
                groupValue: _character1,
                onChanged: (fever_freq value) {
                  setState(() { _character1 = value; });
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
                value: fever_freq.B,
                groupValue: _character1,
                onChanged: (fever_freq value) {
                  setState(() { _character1 = value; });
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
                value: fever_freq.C,
                groupValue: _character1,
                onChanged: (fever_freq value) {
                  setState(() { _character1 = value; });
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
            SizedBox(height: 0.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: cough_freq.A,
                groupValue: _character2,
                onChanged: (cough_freq value) {
                  setState(() { _character2 = value; });
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
                value: cough_freq.B,
                groupValue: _character2,
                onChanged: (cough_freq value) {
                  setState(() { _character2 = value; });
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
                value: cough_freq.C,
                groupValue: _character2,
                onChanged: (cough_freq value) {
                  setState(() { _character2 = value; });
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
            SizedBox(height: 0.0),
            ListTile(
              title: Text("1-2 times",
                textAlign: TextAlign.start,
                style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.normal)
                ),
              leading: Radio(
                value: breath_freq.A,
                groupValue: _character3,
                onChanged: (breath_freq value) {
                  setState(() { _character3 = value; });
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
                value: breath_freq.B,
                groupValue: _character3,
                onChanged: (breath_freq value) {
                  setState(() { _character3 = value; });
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
                value: breath_freq.C,
                groupValue: _character3,
                onChanged: (breath_freq value) {
                  setState(() { _character3 = value; });
                },
              ),
            ),
            new Expanded(
              child: SingleChildScrollView(),
          ),
          ],
        )
      );
    }
}