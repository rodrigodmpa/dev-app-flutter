import 'package:flutter/material.dart';
import 'package:myapp/src/controller/AnimalController.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../util/MyFunctions.dart';
import 'Widgets.dart';
import '../util/colors.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../model/Animal.dart';
import '../view/Menu.dart';

class NotLogged extends StatelessWidget {
  const NotLogged({
    Key key,
    @required this.devicePixelRatio,
  }) : super(key: key);

  final double devicePixelRatio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(52, devicePixelRatio), 0,
                Dp2Pixel(52, devicePixelRatio)),
            child: Center(
                child: Text(
              "Ops",
              style: TextStyle(fontSize: 72, color: primaryLightColor),
            )),
          ),
          Center(
            child: Text("Você não pode realizar esta ação sem"),
          ),
          Center(
            child: Text("possuir um cadastro"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(16, devicePixelRatio), 0,
                Dp2Pixel(44, devicePixelRatio)),
            child: ButtonWidget(text: "Fazer cadastro", rota: '/cad_pessoa'),
          ),
          Center(
            child: Text("Já possui cadastro?"),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(0, Dp2Pixel(16, devicePixelRatio), 0, 0),
            child: ButtonWidget(text: "Fazer login", rota: '/main'),
          ),
        ],
      ),
    );
  }
}