import 'package:flutter/material.dart';
import 'AnimalCard.dart';

class AdotarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Adotar"),
        elevation: 4,
      ),
      drawer:  Drawer(),
      body: Column(
        children: <Widget>[
          AnimalCard(),
        ],
      ),
    );
  }
}