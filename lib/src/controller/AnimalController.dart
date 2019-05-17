import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:myapp/src/model/User.dart';
import '../model/Animal.dart';

class AnimalController {
  final reference = FirebaseDatabase.instance.reference();

  void registerAnimal(Animal animal, String treeLevel, File image) async {
    final String id = await AuthController().getCurrentUser();
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("animal")
        .child(treeLevel)
        .push();

    final String url = await saveAnimalImage(animalReference.key, image);

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
      'pictureRoute': url,
      'address': AuthController.loggedUser.address, //animal.address,
      'needs': animal.needs,
    };

    animalReference.set(newAnimal);
  }

  void registerAnimalNoPicture(Animal animal, String treeLevel) async {
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("animal")
        .child(treeLevel)
        .child(animal.id);

    var newAnimal = <String, dynamic>{
      'userId': animal.userId,
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
      'address': animal.address, //animal.address,
      'needs': animal.needs,
    };

    animalReference.set(newAnimal);
  }

  Future<List<Animal>> getAnimals(String treeLevel) async {
    List<Animal> listOfAnimals = [];
    List<String> favoritee = await getFavoriteAnimal();
    Map<dynamic, dynamic> favorites;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('animal')
        .child(treeLevel)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
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
    }
    return listOfAnimals;
  }

  Future<List<Animal>> getAnimalsByFavorite() async {
    List<Animal> listOfAnimals = [];
    List<String> favoritee = await getFavoriteAnimal();
    Map<dynamic, dynamic> favorites;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('animal')
        .child('ajudar')
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach((k, v) {
        if (favoritee.contains(k)) {
          listOfAnimals.add(
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
          );
        }
      });
    }
    return listOfAnimals;
  }

  Future<List<Animal>> getMyAnimals() async {
    List<Animal> listOfAnimals = [];
    List<String> favoritee = await getFavoriteAnimal();
    String userId = await AuthController().getCurrentUser();
    Map<dynamic, dynamic> favorites;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('animal')
        .child('ajudar')
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach((k, v) {
        if (v['userId'] == userId) {
          listOfAnimals.add(
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
          );
        }
      });
    }

    Map<dynamic, dynamic> maps2;
    await FirebaseDatabase.instance
        .reference()
        .child('animal')
        .child('limbo')
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps2 = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps2 != null) {
      maps2.forEach((k, v) {
        if (v['userId'] == userId) {
          listOfAnimals.add(
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
          );
        }
      });
    }
    return listOfAnimals;
  }

  void setIntendToAdopt(String animalId) async {
    final String id = await AuthController().getCurrentUser();
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("intend_adopt")
        .child(animalId);

    var newFavorite = <String, String>{
      id: "",
    };

    animalReference.update(newFavorite);
  }

  Future<List<User>> getIntendUser(String animalId) async {
    List<String> listOfUsersIds = await getIntendToAdopt(animalId);

    List<User> listOfUsers = [];
    String userId = await AuthController().getCurrentUser();
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance.reference().child('user').once().then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach((k, v) {
        if (listOfUsersIds.contains(k)) {
          listOfUsers.add(
            User(
                address: v["address"],
                email: v["email"],
                id: k,
                idade: v["idade"],
                name: v["name"],
                password: v["password"],
                phone: v["phone"],
                state: v["state"],
                userName: v["userName"]),
          );
        }
      });
    }
    return listOfUsers;
  }

  Future<List<String>> getIntendToAdopt(String animalId) async {
    final String id = await AuthController().getCurrentUser();
    List<String> listOfUsers = [];
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('intend_adopt')
        .child(animalId)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    if (maps != null) {
      maps.forEach(
        (k, v) => listOfUsers.add(k),
      );
    }

    return listOfUsers;
  }

  void removeIntendAdopt(String animalId) {
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("intend_adopt")
        .child(animalId);

    animalReference.remove();
  }

  Future<Animal> getAnimalById(String animalId, String userId) async {
    Map<dynamic, dynamic> maps;
    Animal animal;
    await FirebaseDatabase.instance
        .reference()
        .child('animal')
        .child('ajudar')
        .child(animalId)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );
    if (maps != null) {
      animal = Animal(
        id: animalId,
        userId: userId,
        about: maps['about'],
        address: maps['address'],
        age: maps['age'],
        demands: maps['demands'],
        disease: maps['disease'],
        health: maps['health'],
        interest: maps['interest'],
        medicationName: maps['medicationName'],
        name: maps['name'],
        needs: maps['needs'],
        objects: maps['objects'],
        objectsName: maps['objectsName'],
        pictureRoute: maps['pictureRoute'],
        sex: maps['sex'],
        size: maps['size'],
        species: maps['species'],
        temperament: maps['temperament'],
      );
    }
    print(animal);
    removeAnimalById(animalId);
    registerAnimalNoPicture(animal, "limbo");
    return animal;
  }

  void removeAnimalById(String animalId) {
    final animalReference = FirebaseDatabase.instance
        .reference()
        .child("animal")
        .child("ajudar")
        .child(animalId)
        .remove();
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

  Future<String> saveAnimalImage(String animalId, File imageFile) async {
    StorageReference ref =
        FirebaseStorage.instance.ref().child("animal_picture").child(animalId);
    StorageUploadTask uploadTask = ref.putFile(imageFile);
    return await (await uploadTask.onComplete).ref.getDownloadURL();
  }
}
