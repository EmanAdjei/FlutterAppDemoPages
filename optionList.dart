import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goldidentifierapp/pages/optionButton.dart';


class OptionList extends StatefulWidget {
  @override
  _OptionListState createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {


  // List of buttons and properties use to produce cards of each
  List<OptionButton> choices = [
    OptionButton(buttonName: 'Check Magnetism', buttonIcon: Icon(Icons.line_weight),
        buttonDescription: 'If the object is in proximty, the magnetometer can be used to check for any ferrous metals.'),
    OptionButton(buttonName: 'Take Photo', buttonIcon: Icon(Icons.photo_camera),
        buttonDescription: 'Take a photo of the object in question.'),
    OptionButton(buttonName: 'Use Photo From Gallery', buttonIcon: Icon(Icons.photo_library),
        buttonDescription: 'Check an object in a photo that is in the phone\'s photo gallery.'),
  ];

  void optionAction(String buttonName){
    // Same method is called for all buttons
    print('$buttonName Pressed');
    switch(buttonName) {
      case 'Check Magnetism': {
        // Moves to the magnetometer page
        Navigator.pushNamed(context, '/magnet');
      }
      break;

      case 'Use Photo From Gallery': {
        // Moves to the fromGallery page
        Navigator.pushNamed(context, '/fromGallery');
      }
      break;

      case 'Take Photo': {
        // Moves to the takePhoto page
        Navigator.pushNamed(context, '/takePhoto');
      }
      break;

      default: {
        // For exceptions presses
        print('Unidentified Button Selected');
      }
      break;
    }
  }

  Widget optionCard(optionButton){
    return Card(
      // Each card has a description, button icon and button label
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          // Fills the card to the width of the device
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                optionButton.buttonDescription,
                style: TextStyle(
                  fontSize: 20.0,
                )
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton.icon(
              onPressed: () {
                // Called the page switching method on pressed
                optionAction(optionButton.buttonName);
              },
              icon: optionButton.buttonIcon,
              label: Text('${optionButton.buttonName}'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The text in the top bar of the app
          title: Text('Gold Identifier'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Column(
                  // Iterative map method which creates a new card for each optionButton in the list choices
                  children: choices.map((choice) => optionCard(choice)).toList(),
                ),
              ],
            ),
          ),
        )
    );
  }
}