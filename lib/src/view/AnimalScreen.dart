import 'package:flutter/material.dart';
import 'package:myapp/src/model/Animal.dart';
import '../util/colors.dart';
import '../view/Widgets.dart';
import '../util/MyFunctions.dart';

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
        backgroundColor: primaryLightColor,
        title: new Text(animal.name),
        elevation: 0,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'SEXO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          animal.sex,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'PORTE',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          animal.size,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'IDADE',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          animal.idade.toString() + ' anos',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'ENDEREÇO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          animal.address,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen/2,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'CASTRADO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          simOuNao(animal.health[0]),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen/2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'VERMIFUGADO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          simOuNao(animal.health[1]),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen/2,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'VACINADO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          simOuNao(animal.health[2]),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen/2,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'DOENTE',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          simOuNao(animal.health[3]),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'TEMPERAMENTO',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          animal.temperament,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'EXIGÊNCIAS DO DOADOR',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          animal.demands,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: sizeOfWidthScreen,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          'MAIS SOBRE '+animal.name.toUpperCase(),
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                        child: Text(
                          animal.sobre,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(48,devicePixelRatio), 0, Dp2Pixel(12, devicePixelRatio)),
            child: new ButtonWidget(text: "PRETENDO ADOTAR",rota: ''),
          ),
          ],
        ),
      ),
    );
  }
}

String simOuNao(int flag) {
 if (flag == 1) {
    return 'Sim';
 } else{
   return 'Nao';
  }
}