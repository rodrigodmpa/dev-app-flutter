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
            AnimalCard(address: "SQN 404", age: "18", name: "Pequi", pictureRoute: "asset/dog4.jpeg", sex: "Male", size: "Medium",),
            AnimalCard(pictureRoute: "asset/dog2.jpeg"),
            AnimalCard(pictureRoute: "asset/dog1.jpeg"),
            AnimalCard(pictureRoute: "asset/dog3.jpeg"),
            AnimalCard(),
            AnimalCard(),
            AnimalCard(),
          ],
        ),
      ),
    );
  }
}
