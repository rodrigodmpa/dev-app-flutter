import 'dart:async';

import 'package:flutter/material.dart';
import 'AnimalCard.dart';
import '../view/Menu.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';
import 'package:myapp/src/model/Animal.dart';


class AdotarScreen extends StatefulWidget{

  @override
  _AdotarScreenState createState() => _AdotarScreenState();
}

final databaseReference = FirebaseDatabase.instance.reference();
final animaisReference = FirebaseDatabase.instance.reference().child('animais');

class _AdotarScreenState extends State<AdotarScreen> {
  List<Animal> animais;

//  _AdotarScreenState() {
//    if(animais == null) {
//      getAnimalsFromDatabase().then((val) {
//        print("AQUI");
//        print(val);
//        setState(() {
//          animais = val;
//        });
//      });
//    }
//  }

  @override
  Widget build(BuildContext context){

    var futureBuilder = new FutureBuilder(
      future: getAnimalsFromDatabase(),
      builder: (BuildContext context, AsyncSnapshot<List<Animal>> snapshot) {
        print("Future Builder");
        print(snapshot.data);
        return new SingleChildScrollView(
          child: Column(
            children: _createChildren(snapshot.data),
          ),
        );
      }
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Adotar"),
        elevation: 4,
      ),
      drawer: Menu(),
      body: futureBuilder,
//      body: SingleChildScrollView(
//        child: Column(
//          children: _createChildren(animais),
//        ),
//      ),
    );
  }

  Future<List<Animal>> getAnimalsFromDatabase() async{
    List<Animal> animais = new List<Animal>();

    // Lê os registros do BD
    databaseReference.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values = snapshot.value;
      values.forEach((key,values) {
        if(key == "animais") {
          for (var a in values) {
            if (a != null) {
              Map animalMap = jsonDecode(a);
              Animal animal = Animal.fromJson(animalMap);
              animais.add(animal);
            }
          }
        }
      });
    });

    return await animais;
  }

  List<Widget> _createChildren(animais) {
    return new List<Widget>.generate(animais.length, (int index){
      return AnimalCard(animal:animais[index], onTapPath:"/adotar_animal_screen",);
    });
  }
}
