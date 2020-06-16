// Import flutter helper lib
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}


class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter ++;
    var res = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageInstance = ImageModel.fromJson(json.decode(res.body));

    setState(() {
      images.add(imageInstance);
    });
  }

  Widget build(ctx){
   return MaterialApp(
    home: Scaffold(
      body: ImageList(images),
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add)
        ),
    ),
    );
  }
}


