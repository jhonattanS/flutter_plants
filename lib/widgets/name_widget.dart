import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  String name;
  NameWidget(
    this.name, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: Color(0xFF582949)),
        )
      ],
    );
  }
}
