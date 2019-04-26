import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';

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
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,health: "Vacinado",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            
          ],
        ),
      ),
    );
  }
}
