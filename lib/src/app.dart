// Import flutter helper lib
import 'package:flutter/material.dart';


class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}


class AppState extends State<App> {
  int counter = 0;

  Widget build(ctx){
   return MaterialApp(
    home: Scaffold(
      body: Text('$counter'),
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState(() {
            counter +=1;
          });
          },
        child: Icon(Icons.add)
        ),
    ),
    );
  }
}


