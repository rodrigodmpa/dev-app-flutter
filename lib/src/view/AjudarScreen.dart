import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';

class AjudarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Ajudar"),
        elevation: 4,
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimalCard(animal : Animal(age: 2,name: "Thor",sex: 1,about: "Este animal é bonito",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 1,pictureRoute: "asset/dog1.jpeg",address: "SQN 1"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 3,name: "Iron Man",sex: 1,about: "Este animal é Feio",userId: 0,demands: [0,1],species: 0,size: 1,temperament: [0,1], interest: 2,pictureRoute: "asset/dog2.jpeg",address: "SQN 2"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 4,name: "Cp America",sex: 2,about: "Este animal é estranho",userId: 0,demands: [0,1],species: 0,size: 2,temperament: [0,1], interest: 3,pictureRoute: "asset/dog3.jpeg",address: "SQN 3"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 5,name: "Hulk",sex: 1,about: "Este animal é diferente",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 4,pictureRoute: "asset/dog4.jpeg",address: "SQN 4"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 6,name: "Rodrigo",sex: 1,about: "Este animal é bonito",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 7,name: "Rodrigo",sex: 1,about: "Este animal é bonito",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 8,name: "Rodrigo",sex: 1,about: "Este animal é bonito",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/adotar_animal_screen",),
            AnimalCard(animal : Animal(age: 9,name: "Rodrigo",sex: 1,about: "Este animal é bonito",userId: 0,demands: [0,1],species: 0,size: 0,temperament: [0,1], interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/adotar_animal_screen",),
            
          ],
        ),
      ),
    );
  }
}
