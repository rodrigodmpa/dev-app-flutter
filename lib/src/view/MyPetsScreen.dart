import 'package:flutter/material.dart';
import 'package:myapp/src/controller/AnimalController.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import 'package:myapp/src/view/NotLogged.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';

class MyPetScreen extends StatelessWidget {
  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    if (AuthController.logged) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Meus pets"),
          elevation: 4,
        ),
        drawer: Menu(),
        body: Content(),
      );
    } else {
      return NotLogged(devicePixelRatio: devicePixelRatio);
    }
  }
}

class Content extends StatefulWidget {
  const Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AnimalController().getMyAnimals(),
      builder: (BuildContext context, AsyncSnapshot<List<Animal>> snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        return Center(
          child: ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new AnimalCard(
                    animal: snapshot.data[index],
                    onTapPath: "/my_pet_animal_screen");
              }),
        );
      },
    );
  }
}
