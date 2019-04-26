import 'package:flutter/material.dart';
import 'package:myapp/src/model/Animal.dart';

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
      body: Center(
        child: Container(
          height: sizeOfHeightScreen / 3.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(animal.pictureRoute),
                  fit: BoxFit.fill,
                ),
              ),
        ),
      ),
    );
  }
}
