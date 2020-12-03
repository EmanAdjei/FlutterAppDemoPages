import 'package:flutter/material.dart';

class AnalysePhoto extends StatefulWidget {
  @override
  _AnalysePhotoState createState() => _AnalysePhotoState();
}

class _AnalysePhotoState extends State<AnalysePhoto> {

  // TODO: Add Photo manipulation to crop image to 288 by 288.

  void getData() {
    // Simulate Sending photo and waiting for response.
    Future.delayed(Duration(seconds: 3), () {
      print('Done');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
