import 'package:flutter/material.dart';
import 'src/view/HomePage.dart';
import 'src/view/LoginScreen.dart';
import 'src/view/AdotarScreen.dart';
import 'src/view/AjudarScreen.dart';
import 'src/view/CadAnimalScreen.dart';
import 'src/view/CadPessoaScreen.dart';
import 'src/view/AdotarAnimalScreen.dart';
import 'src/view/AjudarAnimalScreen.dart';
import 'src/view/CadAnimalSucesso.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/main': (context) => LoginScreen(),
        '/adotar': (context)=> AdotarScreen(),
        '/ajudar': (context) => AjudarScreen(),
        '/cad_animal': (context) => CadAnimalScreen(),
        '/cad_pessoa': (context) => CadPessoaScreen(),
        '/adotar_animal_screen': (context) => AdotarAnimalScreen(),
        '/ajudar_animal_screen': (context) => AjudarAnimalScreen(),
        '/cad_animal_success': (context) => CadAnimalSucesso(),
      }
    );
  }
}
