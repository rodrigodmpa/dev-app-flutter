import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';

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
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            AnimalCard(animal : Animal(id: 0,idade: 10,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1")),
            
          ],
        ),
      ),
    );
  }
}
