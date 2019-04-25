import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import 'Widgets.dart';

class CadAnimalScreen extends StatelessWidget {

  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro"),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(52, devicePixelRatio), 0, Dp2Pixel(52, devicePixelRatio)),
            child: Center(child: Text("Ops",style: TextStyle(fontSize: 72),)),
            ),
          Center(child: Text("Você não pode realizar esta ação sem"),),
          Center(child: Text("possuir um cadastro"),),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(16,devicePixelRatio), 0, Dp2Pixel(44, devicePixelRatio)),
            child: ButtonWidget(text: "Fazer cadastro",rota: '/cad_pessoa'),
          ),
          Center(child: Text("Já possui cadastro?"),),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(16,devicePixelRatio), 0, 0),
            child: ButtonWidget(text: "Fazer login",rota: ''),
          ),
      ],
      ),
    );
  }
}