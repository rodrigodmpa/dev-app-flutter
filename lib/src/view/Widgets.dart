import 'package:flutter/material.dart';
import '../util/colors.dart';
class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(48, 0, 48, 0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16, fontFamily: "Roboto", color: Color(0xff757575)),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key key,
    this.text, this.rota,
  }) : super(key: key);

  final String text;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(
        context,
        rota,
      );},
      color: primaryLightColor,
      child: Container(
        width: 232,
        height: 40,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Color(0xff434343), fontSize: 12, fontFamily: "Roboto"),
          ),
        ),
      ),
    );
  }
}
