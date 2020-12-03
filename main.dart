import 'package:flutter/material.dart';
import 'package:goldidentifierapp/pages/optionList.dart';
import 'package:goldidentifierapp/pages/loading.dart';
import 'package:goldidentifierapp/pages/magnetTest.dart';
import 'package:goldidentifierapp/pages/takePhoto.dart';
import 'package:goldidentifierapp/pages/fromGallery.dart';

// The main function is the first thing called it calls the runApp function
// which in turn calls the OptionList class.
void main() => runApp(MaterialApp(
  //home: OptionList(),
  initialRoute: '/home',
  routes: {
    //'/': (context) => LoadingPage(),
    '/home': (context) => OptionList(),
    '/magnet': (context) => MagnetTest(),
    '/takePhoto': (context) => TakePhoto(),
    '/fromGallery': (context) => FromGallery(),
  },
));




