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
              Text('Meus pets'),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, "/mypet");
          },
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
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
