import 'dart:io';

import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import 'Widgets.dart';
import '../util/colors.dart';

class CadPessoaScreen extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Pessoal"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.fromLTRB(0, Dp2Pixel(16, devicePixelRatio), 0, 0),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                color: primaryColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("As informações preenchidas serão divulgadas\n apenas para a pessoa com a qual você realizar\n o processo de adoção e/ou apadrinhamento,\n após a formalização do processo."),
                  ),
                ),
              ),
            ),
            MyCustomForm(),
          ],
        ),
      ),
    );
  }
}

// Create a Form Widget
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class MyCustomFormState extends State<MyCustomForm> {
  MediaQueryData queryData;
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, 30, 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("INFORMAÇÕES PESSOAIS", style: TextStyle(color: primaryColor),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nome completo:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Idade:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "E-mail:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Estado:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Endereço:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Telefone:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, 30, 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("INFORMAÇÕES DE PERFIL", style: TextStyle(color: primaryColor),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nome de Usuário:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Senha:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Confirmação de senha:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, 30, 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text("FOTO DE PERFIL", style: TextStyle(color: primaryColor),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                width: 200,
                child: RaisedButton(
                  color: primaryColor,
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, we want to show a Snackbar
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Fazer Cadastro'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
