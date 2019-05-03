
import 'package:flutter/material.dart';
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
        new DrawerHeader(
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          child: new Text(
            'Meau',
            style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
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
          onTap: () {
          },
        ),
        new ListTile(
          title: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.info),
              ),
              Text('Ajuda'),
            ],
          ),
          onTap: () {},
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