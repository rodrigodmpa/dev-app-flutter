import 'package:flutter/material.dart';
import 'package:myapp/src/controller/AnimalController.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';

class AjudarScreen extends StatelessWidget {
  Future<List<Animal>> animals = AnimalController().getAnimals();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Ajudar"),
        elevation: 4,
      ),
      drawer: Menu(),
      body: Content(animals: animals),
    );
  }
}

class Content extends StatefulWidget {
  const Content({
    Key key,
    @required this.animals,
  }) : super(key: key);

  final Future<List<Animal>> animals;

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AnimalController().getAnimals(),
      builder: (BuildContext context, AsyncSnapshot<List<Animal>> snapshot){
        if(!snapshot.hasData) return Container();
        return Center(
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return new AnimalCard(animal: snapshot.data[index], onTapPath: "/adotar_animal_screen");
            }
          ),
        );
      },
    );
  }
}
