import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../model/Animal.dart';

class AnimalController {
  final reference = FirebaseDatabase.instance.reference();

  void registerAnimal(Animal animal) async {
    final String id = await AuthController().getCurrentUser();
    final animalReference =
        FirebaseDatabase.instance.reference().child("animal").push();

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
    List<Animal> listOfAnimals = [];
    List<String> favoritee = await getFavoriteAnimal();
    Map<dynamic, dynamic> favorites;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance.reference().child('animal').once().then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    maps.forEach(
      (k, v) => listOfAnimals.add(
            Animal(
                id: k,
                userId: v['userId'],
                about: v['about'],
                address: v['address'],
                age: v['age'],
                demands: v['demands'],
                disease: v['disease'],
                health: v['health'],
                interest: v['interest'],
                medicationName: v['medicationName'],
                name: v['name'],
                needs: v['needs'],
                objects: v['objects'],
                objectsName: v['objectsName'],
                pictureRoute: v['pictureRoute'],
                sex: v['sex'],
                size: v['size'],
                species: v['species'],
                temperament: v['temperament'],
                favorite: favoritee.contains(k)),
          ),
    );
    return listOfAnimals;
  }

  Future<bool> setFavoriteAnimal(String animalId, bool favorite) async {
    final String id = await AuthController().getCurrentUser();
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("favorite_animal")
        .child(id);
    if (favorite) {
      animalReference.child(animalId).remove();
      return false;
    } else {
      var newFavorite = <String, String>{
        animalId: "",
      };
      animalReference.update(newFavorite);
      return true;
    }
  }

  Future<List<String>> getFavoriteAnimal() async {
    final String id = await AuthController().getCurrentUser();
    List<String> listOfAnimals = [];
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('favorite_animal')
        .child(id)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach(
        (k, v) => listOfAnimals.add(k),
      );
    }

    return listOfAnimals;
  }
}
