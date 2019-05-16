import 'dart:ui';
import 'package:flutter/material.dart';
import 'Widgets.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';
import '../view/Menu.dart';

class CadAnimalSucesso extends StatelessWidget {

  MediaQueryData queryData;
  
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    // createInitialAnimals();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfffee29b),
        elevation: 0,
        title: Text("Cadastro do Animal"),
      ),
      drawer: Menu(
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(46, devicePixelRatio), 0, Dp2Pixel(52, devicePixelRatio)),
            child: Center(
              child: Text(
                "Eba!",
                style: TextStyle(
                    fontSize: 72,
                    color: primaryColor,
                    fontFamily: "Courgette Regular"),
              ),
            ),
          ),
          new TextWidget(
            text: "O cadastro do seu pet foi realizado",
          ),
          new TextWidget(
            text: "com sucesso!",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(48,devicePixelRatio), 0, Dp2Pixel(12, devicePixelRatio)),
            
          ),
          new TextWidget(
            text: "Certifique-se que permitiu o envio de",
          ),
          new TextWidget(
            text: "notificações por push no campo",
          ),
          new TextWidget(
            text: "privacidade do menu configurações",
          ),
          new TextWidget(
            text: "do aplicativo. Assim, poderemos te",
          ),
          new TextWidget(
            text: "avisar assim que alguém ",
          ),
          new TextWidget(
            text: "interessado entrar em contato!",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(400,devicePixelRatio), 0, Dp2Pixel(24, devicePixelRatio)),
            child: new ButtonWidget(text: "MEUS PETS",rota: '/'),
          ),
        ]
      )
    );
  }
}