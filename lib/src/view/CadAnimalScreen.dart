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

class CadAnimalScreen extends StatelessWidget {
  MediaQueryData queryData;
  Animal animal;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    double sizeOfWidthScreen = queryData.size.width - 8;
    double sizeOfHeightScreen = queryData.size.height;
    if (AuthController.logged) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro Animal"),
        ),
        drawer: Menu(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                    child: Container(
                      width: sizeOfWidthScreen - 30,
                      child: Center(
                          child: Text(
                        "Tenho interesse em cadastrar o animal para:",
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: sizeOfWidthScreen / 3 - 16,
                      alignment: Alignment.bottomLeft,
                      child: ButtonWidget(text: "ADOÇÃO", rota: ''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: sizeOfWidthScreen / 3 - 11,
                      alignment: Alignment.bottomLeft,
                      child: ButtonWidget(text: "APADRINHAR", rota: ''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: sizeOfWidthScreen / 3 - 16,
                      alignment: Alignment.bottomLeft,
                      child: ButtonWidget(text: "AJUDA", rota: ''),
                    ),
                  ),
                ],
              ),
              new Divider(
                color: Colors.grey,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Apadrinhar',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              MyCustomForm(),
            ],
          ),
        ),
      );
    } else {
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
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class MyCustomFormState extends State<MyCustomForm> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;
  bool _value9 = false;
  bool _value10 = false;
  bool _value11 = false;
  bool _value12 = false;
  bool _value13 = false;
  bool _value14 = false;
  bool _value15 = false;
  bool _value16 = false;
  bool _value17 = false;
  bool _value18 = false;
  bool _value19 = false;
  bool _value20 = false;

  int especie = 1;
  int sexo = 1;
  int porte = 1;
  int idade = 1;
  List<int> temperamento = [0,0,0,0,0,0];
  List<int> health = [0,0,0,0];
  List<int> demands = [0,0,0];
  List<int> needs = [0,0,0];
  int objects = 1;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);
  void _value5Changed(bool value) => setState(() => _value5 = value);
  void _value6Changed(bool value) => setState(() => _value6 = value);
  void _value7Changed(bool value) => setState(() => _value7 = value);
  void _value8Changed(bool value) => setState(() => _value8 = value);
  void _value9Changed(bool value) => setState(() => _value9 = value);
  void _value10Changed(bool value) => setState(() => _value10 = value);
  void _value11Changed(bool value) => setState(() => _value11 = value);
  void _value12Changed(bool value) => setState(() => _value12 = value);
  void _value13Changed(bool value) => setState(() => _value13 = value);
  void _value14Changed(bool value) => setState(() => _value14 = value);
  void _value15Changed(bool value) => setState(() => _value15 = value);
  void _value16Changed(bool value) => setState(() => _value16 = value);
  void _value17Changed(bool value) => setState(() => _value17 = value);
  void _value18Changed(bool value) => setState(() => _value18 = value);
  void _value19Changed(bool value) => setState(() => _value19 = value);
  void _value20Changed(bool value) => setState(() => _value20 = value);
  MediaQueryData queryData;
  File _image;
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  Animal _animal = Animal();
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
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nome completo:"),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
              onSaved: (String value) {
                this._animal.name = value;
              },
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'FOTOS DO ANIMAL:',
                  style: new TextStyle(
                    color: primaryColor,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: _image == null
                ? Text('Nenhuma imagem selecionada.')
                : Image.file(
                    _image,
                    width: 200,
                    height: 150,
                  ),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Pick Image',
                child: Icon(Icons.add_a_photo),
              ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'ESPÉCIE:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: especie,
                onChanged: (int value) {
                  especie = 0;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Cachorro',
                style: new TextStyle(fontSize: 16.0),
              ),
              new Radio(
                value: 1,
                groupValue: especie,
                onChanged: (int value) {
                  especie = 1;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Gato',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'SEXO:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: sexo,
                onChanged: (int value) {
                  sexo = 0;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Macho',
                style: new TextStyle(fontSize: 16.0),
              ),
              new Radio(
                value: 1,
                groupValue: sexo,
                onChanged: (int value) {
                  sexo = 1;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Fêmea',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'PORTE:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: porte,
                onChanged: (int value) {
                  porte = 0;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Pequeno',
                style: new TextStyle(fontSize: 16.0),
              ),
              new Radio(
                value: 1,
                groupValue: porte,
                onChanged: (int value) {
                  porte = 1;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Médio',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
              new Radio(
                value: 2,
                groupValue: porte,
                onChanged: (int value) {
                  porte = 2;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Grande',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'IDADE:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: idade,
                onChanged: (int value) {
                  idade = 0;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Filhote',
                style: new TextStyle(fontSize: 16.0),
              ),
              new Radio(
                value: 1,
                groupValue: idade,
                onChanged: (int value) {
                  idade = 1;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Adulto',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
              new Radio(
                value: 2,
                groupValue: idade,
                onChanged: (int value) {
                  idade = 2;
                  setState(() {
                  });
                },
              ),
              new Text(
                'Idoso',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'TEMPERAMENTO:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value1, onChanged: (bool value) {
                _value1 = value;
                value ? temperamento[0] = 1 : temperamento[0] = 0;
                setState(() {});
              }),
              Text("Brincalhão"),
              Checkbox(value: _value2, onChanged: (bool value) {
                _value2 = value;
                value ? temperamento[1] = 1 : temperamento[1] = 0;
                setState(() {});
              }),
              Text("Tímido"),
              Checkbox(value: _value3, onChanged: (bool value) {
                _value3 = value;
                value ? temperamento[2] = 1 : temperamento[2] = 0;
                setState(() {});
              }),
              Text("Calmo"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value4, onChanged: (bool value) {
                _value4 = value;
                value ? temperamento[3] = 1 : temperamento[3] = 0;
                setState(() {});
              }),
              Text("Guarda"),
              Checkbox(value: _value5, onChanged: (bool value) {
                _value5 = value;
                value ? temperamento[4] = 1 : temperamento[4] = 0;
                setState(() {});
              }),
              Text("Amoroso"),
              Checkbox(value: _value6, onChanged: (bool value) {
                _value6 = value;
                value ? temperamento[5] = 1 : temperamento[5] = 0;
                setState(() {});
              }),
              Text("Preguiçoso"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'SAÚDE:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value7, onChanged: (bool value) {
                _value7 = value;
                value ? health[0] = 1 : health[0] = 0;
                setState(() {});
              }),
              Text("Vacinado"),
              Checkbox(value: _value8, onChanged: (bool value) {
                _value8 = value;
                value ? health[1] = 1 : health[1] = 0;
                setState(() {});
              }),
              Text("Vermifugado"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value9, onChanged: (bool value) {
                _value9 = value;
                value ? health[2] = 1 : health[2] = 0;
                setState(() {});
              }),
              Text("Castrado"),
              Checkbox(value: _value10, onChanged: (bool value) {
                _value10 = value;
                value ? health[3] = 1 : health[3] = 0;
                setState(() {});
              }),
              Text("Doente"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Doenças do animal:"),
              onSaved: (String value) {
                this._animal.disease = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'EXIGÊNCIAS PARA APADRINHAMENTO:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value11, onChanged: (bool value) {
                _value11 = value;
                value ? demands[0] = 1 : demands[0] = 0;
                setState(() {});
              }),
              Text("Termo de Apadrinhamento")
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value12, onChanged: (bool value) {
                _value12 = value;
                value ? demands[1] = 1 : demands[1] = 0;
                setState(() {});
              }),
              Text("Auxílio financieiro")
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value13, onChanged: (bool value) {
                _value13 = value;
                value ? demands[2] = 1 : demands[2] = 0;
                setState(() {});
              }),
              Text("Visitas ao animal")
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
            child: Text(
              'Ajudar',
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'NECESSIDADES DO ANIMAL',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value14, onChanged: (bool value) {
                _value14 = value;
                value ? needs[0] = 1 : needs[0] = 0;
                setState(() {});
              }),
              Text("Alimento")
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value15, onChanged: (bool value) {
                _value15 = value;
                value ? needs[1] = 1 : needs[1] = 0;
                setState(() {});
              }),
              Text("Auxílio financieiro")
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value16, onChanged: (bool value) {
                _value16 = value;
                value ? needs[2] = 1 : needs[2] = 0;
                setState(() {});
              }),
              Text("Medicamento")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nome do medicamento"),
              onSaved: (String value) {
                this._animal.medicationName = value;
              },
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(value: _value17, onChanged: (bool value) {
                _value17 = value;
                value ? objects = 1 : objects = 0;
                setState(() {});
              }),
              Text("Objetos")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Especifique os objetos"),
              onSaved: (String value) {
                this._animal.objectsName = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: new Text(
                    'SOBRE O ANIMAL:',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Compartilhe a história do animal"),
              onSaved: (String value) {
                this._animal.about = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SizedBox(
                width: 200,
                child: RaisedButton(
                  color: primaryLightColor,
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      // If the form is valid, we want to show a Snackbar
                      this._animal.species = especie;
                      this._animal.sex = sexo;
                      this._animal.size = porte;
                      this._animal.age = idade;
                      this._animal.temperament = temperamento;
                      this._animal.health = health;
                      this._animal.demands = demands;
                      this._animal.needs = needs;
                      this._animal.objects = objects;
                      
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                      AnimalController().registerAnimal(_animal);
                      print('Printing the login data.');
                      print('Animal: ${_animal.toString()}');
                    }
                  },
                  child: Text('Procurar padrinho'),
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
      print('Animal: ${_animal.toString()}');
    }
  }
}
