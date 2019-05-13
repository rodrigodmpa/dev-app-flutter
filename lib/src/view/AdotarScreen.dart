import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';
import 'package:firebase_database/firebase_database.dart';

class AdotarScreen extends StatelessWidget {
  // final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<Event>(
    //                 stream: FirebaseDatabase.instance
    //                     .reference()
    //                     .child('items')
    //                     .child('-LD2vzOCd54yEFNXJpGj')
    //                     .onValue,
    //                 builder:
    //                     (BuildContext context, AsyncSnapshot<Event> event) {
    //                   if (!event.hasData)
    //                     return new Center(child: new Text('Loading...'));
    //                   Map<dynamic, dynamic> data = event.data.snapshot.value;
    //                   return Column(children: [
    //                     new Text('${data['name']}',
    //                         style: new TextStyle(fontSize: 30.0)),
    //                     new Text('-${data['description']}')

    //                   ]);
    //                 },
    //               ),
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Adotar"),
        elevation: 4,
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimalCard(
              animal: Animal(
                  age: 2,
                  name: "Thor",
                  sex: 1,
                  about: "Este animal é bonito",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 1,
                  pictureRoute: "asset/dog1.jpeg",
                  address: "SQN 1",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 3,
                  name: "Iron Man",
                  sex: 1,
                  about: "Este animal é Feio",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 1,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 2,
                  pictureRoute: "asset/dog2.jpeg",
                  address: "SQN 2",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 4,
                  name: "Cp America",
                  sex: 2,
                  about: "Este animal é estranho",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 2,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 3,
                  pictureRoute: "asset/dog3.jpeg",
                  address: "SQN 3",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 5,
                  name: "Hulk",
                  sex: 1,
                  about: "Este animal é diferente",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 4,
                  pictureRoute: "asset/dog4.jpeg",
                  address: "SQN 4",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 6,
                  name: "Rodrigo",
                  sex: 1,
                  about: "Este animal é bonito",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 1,
                  pictureRoute: "asset/dog2.jpeg",
                  address: "SQN 1",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 7,
                  name: "Rodrigo",
                  sex: 1,
                  about: "Este animal é bonito",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 1,
                  pictureRoute: "asset/dog2.jpeg",
                  address: "SQN 1",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 8,
                  name: "Rodrigo",
                  sex: 1,
                  about: "Este animal é bonito",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 1,
                  pictureRoute: "asset/dog2.jpeg",
                  address: "SQN 1",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
            AnimalCard(
              animal: Animal(
                  age: 9,
                  name: "Rodrigo",
                  sex: 1,
                  about: "Este animal é bonito",
                  userId: 0,
                  demands: [0, 1, 1],
                  species: 0,
                  size: 0,
                  temperament: [0, 1, 0, 1, 0, 0],
                  interest: 1,
                  pictureRoute: "asset/dog2.jpeg",
                  address: "SQN 1",
                  health: [1, 0, 1, 0],
                  needs: [1, 1, 1]),
              onTapPath: "/adotar_animal_screen",
            ),
          ],
        ),
      ),
    );
  }

  void getData() {
    FirebaseDatabase.instance
        .reference()
        .child('animal')
        .once()
        .then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value}');
    });
  }
}
