import 'package:flutter/material.dart';

class AnimalScreen extends StatelessWidget {
  final String name;
  final String age;
  final String sex;
  final String address;
  final String pictureRoute;
  final String size;

  const AnimalScreen({Key key, @required this.name, this.age, this.sex, this.address, this.pictureRoute, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        drawer: Drawer(),
        body: Center(
        ),
      ),
    );
  }
}
