import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import 'Widgets.dart';

class CadPessoaScreen extends StatelessWidget {

  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro Pessoal"),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(16,devicePixelRatio), 0, 0),
          ),
          Center(child: Text("As informações preenchidas serão divulgadas"),),
          Center(child: Text("apenas para a pessoa com a qual você realizar"),),
          Center(child: Text("o processo de adoção e/ou apadrinhamento,"),),
          Center(child: Text("após a formalização do processo."),),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(28,devicePixelRatio), 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("INFORMAÇÕES PESSOAIS"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(28,devicePixelRatio), 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("INFORMAÇÕES DE PERFIL"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(28,devicePixelRatio), 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("FOTO DE PERFIL"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(32,devicePixelRatio), 0, Dp2Pixel(24,devicePixelRatio)),
            child: ButtonWidget(text: "Fazer Cadastro",rota: ''),
          ),
      ],
      ),
    );
  }
}