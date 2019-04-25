import 'package:flutter/material.dart';
import '../util/MyFunctions.dart';
import '../util/colors.dart';

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

// Create a corresponding State class. This class will hold the data related to
// the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new MyTextField(hint: "Teste",),
          MyTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key, this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          border: UnderlineInputBorder()
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
        },
      ),
    );
  }
}
