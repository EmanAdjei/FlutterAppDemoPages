import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MagnetTest extends StatefulWidget {
  @override
  _MagnetTestState createState() => _MagnetTestState();
}

class _MagnetTestState extends State<MagnetTest> {

  @override
  void initState() {
    super.initState();
  }

  List<String> strengthDescription = [
    'No Magnetism Detected',
    'Weak Magnetism Detected',
    'Medium Magnetism level Detected',
    'Strong Magentism Detected'
  ];

  double magnetismLevel = 0;

  int red = 0;
  int green = 1;
  int blue = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gold Scanner'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Container(
                //color: Color.fromRGBO(0, 225, 0, 1),
                color: Color.lerp(Colors.green, Colors.red, magnetismLevel),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 70, 70),
              child: Card(
                margin: EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    // Fills the card to the width of the device
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                          'Gently sway the top of the device across the object being tested.',
                          style: TextStyle(
                            fontSize: 20.0,
                          )
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Text(
                          strengthDescription[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          )
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Text(
                          //'Not solid gold, object could still be gold plated',
                          'Raw microtesla values: ${magnetismLevel}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.lerp(Colors.red, Colors.green, 0.5 )
                          )
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ),
          ],
      ),
    );
  }
}
