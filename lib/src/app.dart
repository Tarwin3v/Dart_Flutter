// Import flutter helper lib
import 'package:flutter/material.dart';

// Create a class that will be our custom widget 
// This class must extend the 'StatelessWidget' base class
class App extends StatelessWidget {
  // Must define a 'build' method that returns
  // the widgets that "this" widget will show
  Widget build(ctx){
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){print('Hi there');},child: Icon(Icons.add)),
    ),
    );
  }
}


