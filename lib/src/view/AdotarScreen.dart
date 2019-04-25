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
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimalCard(address: "SQN 404", age: "18", name: "Pequi", pictureRoute: "nada", sex: "Male", size: "Medium",),
            AnimalCard(),
            AnimalCard(),
            AnimalCard(),
            AnimalCard(),
            AnimalCard(),
            AnimalCard(),
          ],
        ),
      ),
    );
  }
}
