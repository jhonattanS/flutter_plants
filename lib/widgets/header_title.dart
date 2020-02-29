import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  String title;
  HeaderTitle(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Muli',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            letterSpacing: -1,
            color: Color(
              0xFF000000,
            ),
          ),
        )
      ],
    );
  }
}
