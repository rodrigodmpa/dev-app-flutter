import 'package:flutter/material.dart';

class AdotarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer:  Drawer(),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Adotar"),
  
          ),
        ],
      ),
    );
  }
}