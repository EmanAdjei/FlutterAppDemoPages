import 'dart:io';
import 'package:flutter/material.dart';

class FromGallery extends StatefulWidget {
  @override
  _FromGalleryState createState() => _FromGalleryState();
}

class _FromGalleryState extends State<FromGallery> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gold Identifier'),
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
                color: Colors.green,
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
                          'Chose an image to resize and send for analysis.',
                          style: TextStyle(
                            fontSize: 20.0,
                          )
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      RaisedButton.icon(
                        onPressed: () {
                          // Called the page switching method on pressed
                          //optionAction(optionButton.buttonName);
                        },
                        icon: new Icon(Icons.check_circle),
                        label: Text('Pick this photo'),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      RaisedButton.icon(
                        onPressed: () {
                          // Called the page switching method on pressed
                          //optionAction(optionButton.buttonName);
                        },
                        icon: new Icon(Icons.photo_library),
                        label: Text('Chose a different photo'),
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
