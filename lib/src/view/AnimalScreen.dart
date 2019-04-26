import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: Center(
        child: Text(
          "Animal",
          style: TextStyle(
            fontSize: 72,
            color: Color(0xFFABCDFA),
          ),
        ),
      ),
    );
  }
}
