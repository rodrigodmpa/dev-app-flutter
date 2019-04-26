import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';
import '../view/Widgets.dart';
import '../model/User.dart';

class LoginScreen extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    double devicePixelRatio = queryData.devicePixelRatio;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.fromLTRB(0, Dp2Pixel(64, devicePixelRatio), 0, 8),
            child: MyCustomForm(),
          ),
        ],
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
User user;
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
          new MyTextField(
            hint: "Email",
          ),
          MyTextField(
            hint: "Senha",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, Dp2Pixel(52, devicePixelRatio), 0,
                Dp2Pixel(72, devicePixelRatio)),
            child: Center(child: ButtonWidget(text: "ENTRAR", rota: '/')),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xff194f7c),
              child: Container(
                width: 232,
                height: 40,
                child: Center(
                  child: Text(
                    "Entrar com Facebook",
                    style: TextStyle(
                        color: Color(0xfff7f7f7),
                        fontSize: 12,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {},
              color: Color(0xfff15f5c),
              child: Container(
                width: 232,
                height: 40,
                child: Center(
                  child: Text(
                    "Entrar com Google",
                    style: TextStyle(
                        color: Color(0xfff7f7f7),
                        fontSize: 12,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: hint, border: UnderlineInputBorder()),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          } else {
            hint == "email" ? user.email = value : user.password = value;
          }
        },
      ),
    );
  }
}
