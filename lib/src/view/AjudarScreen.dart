import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';

class AjudarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Ajudar"),
        elevation: 4,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimalCard(animal : Animal(id: 0,idade: 2,name: "Thor",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog1.jpeg",address: "SQN 1",needs: "Ajuda financeira e medicamento"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 1,idade: 3,name: "Iron Man",sex: "M",sobre: "Este animal é Feio",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Médio",temperament: "Suave", interest: 2,pictureRoute: "asset/dog2.jpeg",address: "SQN 2",needs: "Ajuda financeira e medicamento"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 2,idade: 4,name: "Cp America",sex: "M",sobre: "Este animal é estranho",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Pequeno",temperament: "Tranqs", interest: 3,pictureRoute: "asset/dog3.jpeg",address: "SQN 3",needs: "Ajuda financeira e medicamento"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 3,idade: 5,name: "Hulk",sex: "M",sobre: "Este animal é diferente",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 4,pictureRoute: "asset/dog4.jpeg",address: "SQN 4",needs: "Ajuda financeira e medicamento"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 4,idade: 6,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1",needs: "Ajuda financeira e medicamento"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 5,idade: 7,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 6,idade: 8,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/ajudar_animal_screen",),
            AnimalCard(animal : Animal(id: 7,idade: 9,name: "Rodrigo",sex: "M",sobre: "Este animal é bonito",userId: 0,demands: "Termo de adoção, fotos da casa, visita prévia e acompanhamento durante três meses",species: "DogÃo",size: "Grande",temperament: "Agressivo", interest: 1,pictureRoute: "asset/dog2.jpeg",address: "SQN 1"),onTapPath: "/ajudar_animal_screen",),
            
          ],
        ),
      ),
    );
  }
}
