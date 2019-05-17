import 'package:flutter/material.dart';
import 'package:myapp/src/controller/AnimalController.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import 'package:myapp/src/model/User.dart';
import 'package:myapp/src/view/NotLogged.dart';
import 'AnimalCard.dart';
import '../model/Animal.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';

class UserCard extends StatefulWidget {
  final User user;
  final String animalId;

  const UserCard({Key key, this.user, this.animalId}) : super(key: key);
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthController().getUserImageGoGo(widget.user.id),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        return Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // return object of type Dialog
                      return AlertDialog(
                        title: new Text("Permitir que " + widget.user.name + " adote seu animal?"),
                        actions: <Widget>[
                          // usually buttons at the bottom of the dialog
                          new FlatButton(
                            child: new Text("Cancelar"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          new FlatButton(
                            child: new Text("Confirmar"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                              AnimalController().removeIntendAdopt(widget.animalId);
                              AnimalController().getAnimalById(widget.animalId, widget.user.id);
                            },
                          ),
                        ],
                      );
                    },
                  );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AuthController.logged &&
                                    AuthController.userUrl != null
                                ? NetworkImage(snapshot.data)
                                : null,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  widget.user.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(widget.user.address)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
