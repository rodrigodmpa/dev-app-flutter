import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';
import '../model/Animal.dart';
import '../view/AdotarAnimalScreen.dart';

class AnimalCard extends StatefulWidget {

  AnimalCard(
      {Key key, this.animal, this.onTapPath})
      : super(key: key);

  final Animal animal;
  final String onTapPath;

  @override
  _AnimalCardState createState() => _AnimalCardState();
}

class _AnimalCardState extends State<AnimalCard> {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    double sizeOfWidthScreen = queryData.size.width - 8;
    double sizeOfHeightScreen = queryData.size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          widget.onTapPath,
          arguments: widget.animal,
        );
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: primaryLightColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(widget.animal.name),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
            Container(
              height: sizeOfHeightScreen / 3.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.animal.pictureRoute),
                  fit: BoxFit.fill,
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
                      Center(child: Text(widget.animal.sex)),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    children: <Widget>[
                      Center(child: Text(widget.animal.idade.toString())),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    children: <Widget>[
                      Center(child: Text(widget.animal.size)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(widget.animal.address),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
