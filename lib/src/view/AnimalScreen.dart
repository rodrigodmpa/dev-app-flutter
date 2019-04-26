import 'package:flutter/material.dart';
import 'package:myapp/src/model/Animal.dart';
import '../util/colors.dart';
import '../view/Widgets.dart';

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
                child: MyText(
                  tamanho: 25,
                  text: animal.name,
                  textColor: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Sexo",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.sex,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Porte",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.size,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Idade",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.idade.toString()+" anos",
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen/2,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Endereço",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.address,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Saúde",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.health,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Interesse",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.interest.toString(),
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyText(
                        tamanho: 20,
                        text: "Sexo",
                        textColor: primaryColor,
                      ),
                      MyText(
                        tamanho: 20,
                        text: animal.sex,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
