import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';

class AnimalCard extends StatefulWidget {
  AnimalCard(
      {Key key,
      this.name = "troll",
      this.pictureRoute = "asset/dog1.jpeg",
      this.sex = "troll",
      this.age = "troll",
      this.size = "troll",
      this.address = "troll"})
      : super(key: key);

  final String name, pictureRoute, sex, age, size, address;

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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalCard(
                  name: widget.name,
                  sex: widget.sex,
                  age: widget.age,
                  size: widget.size,
                  address: widget.address,
                  pictureRoute: widget.pictureRoute,
                ),
          ),
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
                    child: Text(widget.name),
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
                  image: AssetImage(widget.pictureRoute),
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
                      Center(child: Text(widget.sex)),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    children: <Widget>[
                      Center(child: Text(widget.age)),
                    ],
                  ),
                ),
                Container(
                  width: sizeOfWidthScreen / 3,
                  child: Column(
                    children: <Widget>[
                      Center(child: Text(widget.size)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(widget.address),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
