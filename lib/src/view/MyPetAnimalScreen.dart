import 'package:flutter/material.dart';
import 'package:myapp/src/controller/AnimalController.dart';
import 'package:myapp/src/model/Animal.dart';
import 'package:myapp/src/model/User.dart';
import 'package:myapp/src/view/UserCard.dart';
import '../util/colors.dart';
import '../view/Widgets.dart';
import '../util/MyFunctions.dart';
import '../view/Menu.dart';

class MyPetAnimalScreen extends StatefulWidget {
  const MyPetAnimalScreen({Key key, Animal animal}) : super(key: key);

  @override
  _MyPetAnimalScreenState createState() => _MyPetAnimalScreenState();
}

class _MyPetAnimalScreenState extends State<MyPetAnimalScreen> {
  MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    final Animal animal = ModalRoute.of(context).settings.arguments;
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    double sizeOfWidthScreen = queryData.size.width - 8;
    double sizeOfHeightScreen = queryData.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryLightColor,
        title: new Text(animal.name),
        elevation: 0,
      ),
      drawer: Menu(),
      body: Column(
        children: <Widget>[
          Container(
            height: sizeOfHeightScreen / 3.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new NetworkImage(animal.pictureRoute),
                  fit: BoxFit.cover),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: sizeOfWidthScreen / 3,
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                      child: Text(
                        animal.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          FutureBuilder(
            future: AnimalController().getIntendUser(animal.id),
            builder:
                (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              return Center(
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return UserCard(user: snapshot.data[index], animalId: animal.id);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

String simOuNao(int flag) {
  if (flag == 1) {
    return 'Sim';
  } else {
    return 'Nao';
  }
}
