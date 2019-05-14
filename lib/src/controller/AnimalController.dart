import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../model/Animal.dart';

class AnimalController {
  final reference = FirebaseDatabase.instance.reference();

  void registerAnimal(Animal animal) async {
    final String id = await AuthController().getCurrentUser();
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("animal")
        .push();

    var newAnimal = <String, dynamic>{
      'userId': id,
      'name': animal.name,
      'interest': animal.interest,
      'species': animal.species,
      'sex': animal.sex,
      'size': animal.size,
      'age': animal.age,
      'temperament': animal.temperament,
      'demands': animal.demands,
      'medicationName': animal.medicationName,
      'objects': animal.objects,
      'objectsName': animal.objectsName,
      'disease': animal.disease,
      'health': animal.health,
      'about': animal.about,
      'pictureRoute': animal.pictureRoute,
      'address': "sqn2", //animal.address,
      'needs': animal.needs,
    };

    animalReference.set(newAnimal);
  }

  Future<List<Animal>> getAnimals() async {
    Future<List<Animal>> listOfAnimals;
    List<Map<String, dynamic>> maps;
    await FirebaseDatabase.instance.reference().child('animal').once().then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        print('Data : ${snapshot.value}');
      },
    );
    return List.generate(
    maps.length,
    (i) {
      return Animal(
        userId: maps[i]['userId'],
        about: maps[i]['about'],
        address: maps[i]['address'],
        age: maps[i]['age'],
        demands: maps[i]['demands'],
        disease: maps[i]['disease'],
        health: maps[i]['health'],
        interest: maps[i]['interest'],
        medicationName: maps[i]['medicationName'],
        name: maps[i]['name'],
        needs: maps[i]['needs'],
        objects: maps[i]['objects'],
        objectsName: maps[i]['objectsName'],
        pictureRoute: maps[i]['pictureRoute'],
        sex: maps[i]['sex'],
        size: maps[i]['size'],
        species: maps[i]['species'],
        temperament: maps[i]['temperament'],
      );
    },
  );
  }
}
