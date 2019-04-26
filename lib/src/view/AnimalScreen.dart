import 'package:flutter/material.dart';
import 'package:myapp/src/model/Animal.dart';
import '../util/colors.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({Key key, Animal animal}) : super(key: key);

  @override
  _AnimalScreenState createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Container(
            height: sizeOfHeightScreen / 3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(animal.pictureRoute),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                child: Text(
                  animal.name,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: sizeOfWidthScreen / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Sexo",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(animal.sex),
                    )
                  ],
                ),
              ),
              Container(
                width: sizeOfWidthScreen / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Porte",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(animal.size),
                    )
                  ],
                ),
              ),
              Container(
                width: sizeOfWidthScreen / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Idade",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(animal.idade.toString()),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: sizeOfWidthScreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "SexoSexoSexoSexoSexoSexoSexoSexo",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    Center(
                      child: Text(animal.sex),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
