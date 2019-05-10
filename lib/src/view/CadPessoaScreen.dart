import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/src/controller/auth/AuthController.dart';
import '../util/MyFunctions.dart';
import 'Widgets.dart';
import '../util/colors.dart';
import '../model/User.dart';
import 'package:image_picker/image_picker.dart';
import '../view/Menu.dart';

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
      drawer: Menu(),
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
                    child: Text(
                        "As informações preenchidas serão divulgadas\n apenas para a pessoa com a qual você realizar\n o processo de adoção e/ou apadrinhamento,\n após a formalização do processo."),
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
  File _image;
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  User _user = User();
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

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
            child: Text(
              "INFORMAÇÕES PESSOAIS",
              style: TextStyle(color: primaryColor),
            ),
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
              onSaved: (String value) {
                this._user.name = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Idade:"),
              onSaved: (String value) {
                this._user.idade = value;
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
              onSaved: (String value) {
                this._user.email = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Estado:"),
              onSaved: (String value) {
                this._user.state = value;
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
              onSaved: (String value) {
                this._user.address = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Telefone:"),
              onSaved: (String value) {
                this._user.phone = value;
              },
            ),
          ),
          Padding(
            padding:
                EdgeInsets.fromLTRB(20, 30, 0, Dp2Pixel(32, devicePixelRatio)),
            child: Text(
              "INFORMAÇÕES DE PERFIL",
              style: TextStyle(color: primaryColor),
            ),
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
              onSaved: (String value) {
                this._user.userName = value;
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
              onSaved: (String value) {
                this._user.password = value;
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
            child: Text(
              "FOTO DE PERFIL",
              style: TextStyle(color: primaryColor),
            ),
          ),
          Center(
            child: _image == null
                ? Text('Nenhuma imagem selecionada.')
                : Image.file(_image, width: 200, height: 150,),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Pick Image',
                child: Icon(Icons.add_a_photo),
              )
            )
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
                      _formKey.currentState.save();
                      // If the form is valid, we want to show a Snackbar
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));

                      AuthController().registerUser(_user);
                      Navigator.pushNamed(context, '/');
                      print('Printing the login data.');
                      print('User: ${_user.toString()}');
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

    void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the login data.');
      print('User: ${_user.toString()}');
    }
  }
}
