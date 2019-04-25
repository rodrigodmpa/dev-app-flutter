import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';

class AnimalCard extends StatefulWidget {
  AnimalCard({Key key, this.name = "troll", this.pictureRoute = "troll", this.sex = "troll", this.age = "troll", this.size = "troll", this.address = "troll"}) : super(key: key);

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
    double sizeOfScreen = queryData.size.width - 8;
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow,
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
            height: 44,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/Meau_marca_2.png'),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: sizeOfScreen / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text(widget.sex)),
                  ],
                ),
              ),
              Container(
                width: sizeOfScreen / 3,
                child: Column(
                  children: <Widget>[
                    Center(child: Text(widget.age)),
                  ],
                ),
              ),
              Container(
                width: sizeOfScreen / 3,
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
    );
  }
}
