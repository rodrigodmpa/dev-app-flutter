import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../model/Animal.dart';

class AnimalController {

  final reference = FirebaseDatabase.instance.reference();

  void registerAnimal(Animal animal) async {
    final String id = await AuthController().getCurrentUser(); 
    final animalReference = FirebaseDatabase.instance.reference().child("animal").child(id).push().child(animal.name);

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
      'address': "sqn2",//animal.address,
      'needs': animal.needs,
    };

    animalReference.set(newAnimal);
  }
}