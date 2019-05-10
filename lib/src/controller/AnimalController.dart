import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../model/Animal.dart';

class AnimalController {

  final reference = FirebaseDatabase.instance.reference();

  void registerAnimal(Animal animal) async {
    final String id = await AuthController().getCurrentUser(); 
    final animalReference = FirebaseDatabase.instance.reference().child("animal").child(id).child(animal.name);

    var newAnimal = <String, dynamic>{
      'userId': id,
      'name': animal.name,
      'interest': animal.interest,
      'species': animal.species,
      'sex': animal.sex,
      'size': animal.size,
      'idade': animal.idade,
      'temperament': animal.temperament,
      'demands': animal.demands,
      'health': animal.health,
      'sobre': animal.sobre,
      'pictureRoute': animal.pictureRoute,
      'address': animal.address,
      'needs': animal.needs,
    };

    animalReference.set(newAnimal);
  }
}