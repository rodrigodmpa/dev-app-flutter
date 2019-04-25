import 'dart:ui';

import 'package:flutter/material.dart';
import 'Widgets.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';

class MyHomePage extends StatelessWidget {

  MediaQueryData queryData;
  
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(46, devicePixelRatio), 0, Dp2Pixel(52, devicePixelRatio)),
            child: Center(
              child: Text(
                "Olá!",
                style: TextStyle(
                    fontSize: 72,
                    color: primaryColor,
                    fontFamily: "Courgette Regular"),
              ),
            ),
          ),
          new TextWidget(
            text: "Bem vindo ao Meau!",
          ),
          new TextWidget(
            text: "Aqui você pode adotar, doar e ajudar",
          ),
          new TextWidget(
            text: "cães e gatos com facilidade.",
          ),
          new TextWidget(
            text: "Qual o seu interesse?",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(48,devicePixelRatio), 0, Dp2Pixel(12, devicePixelRatio)),
            child: new ButtonWidget(text: "ADOTAR",rota: '/adotar'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, Dp2Pixel(12, devicePixelRatio)),
            child: new ButtonWidget(text: "AJUDAR",rota: '/ajudar'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, Dp2Pixel(44, devicePixelRatio)),
            child: new ButtonWidget(text: "CADASTRAR ANIMAL",rota: '/cad_animal'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/main',
              );
            },
            child: Text(
              "login",
              style: TextStyle(
                  color: Color(0xff88c9bf), fontSize: 16, fontFamily: "Roboto"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(68, devicePixelRatio), 0, Dp2Pixel(32, devicePixelRatio)),
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/Meau_marca_2.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Quantidade de cliques no botão:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
