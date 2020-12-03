
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class TakePhoto extends StatefulWidget {
  //final CameraDescription camera;

  //const TakePictureScreen({
   // Key key,
    //@required this.camera,
  //}) : super(key: key);

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {

  /*File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }*/
  //WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
  //final cameras = await availableCameras();

// Get a specific camera from the list of available cameras.
  //final firstCamera = cameras.first;

  //CameraController _controller;
  //Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the camera,
    // create a CameraController.
    //controller = CameraController(
      // Get a specific camera from the list of available cameras.
     // widget.camera,
      // Define the resolution to use.
      //ResolutionPreset.medium,
    //);

    // Next, initialize the controller. This returns a Future.
    //initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    //controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The text in the top bar of the app
          title: Text('Gold Camera'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[

          ],
        )
    );
  }
}

//##########################################################################################################
//#
//# Title:        <Camera tutorial>
//# Author:       <Flutter>
//# Date:         <5/05/20>
//# Code Version: 1.0
//# Availablity:  https://flutter.dev/docs/cookbook/plugins/picture-using-camera
//#
//##########################################################################################################