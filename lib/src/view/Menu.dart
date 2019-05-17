import 'package:flutter/material.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../util/colors.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text(AuthController.logged ? AuthController.loggedUser.name : ""),
          accountEmail: Text(AuthController.logged ? AuthController.loggedUser.email : ""),
          currentAccountPicture: CircleAvatar(
            radius: 30,
            backgroundImage: AuthController.logged && AuthController.userUrl != null ? NetworkImage(AuthController.userUrl) : null,
          ),
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.music_note),
              ),
              Text('Animais'),
            ],
          ),
          onTap: () {},
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.info),
              ),
              Text('Ajudar'),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, "/ajudar");
          },
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.favorite),
              ),
              Text('Adotar'),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, "/adotar");
          },
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.favorite),
              ),
              Text('Favorite'),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, "/favorite");
          },
        ),
        new Divider(),
        new ListTile(
          title: new Text('Sobre'),
          onTap: () {},
        ),
      ],
    ));
  }
}
