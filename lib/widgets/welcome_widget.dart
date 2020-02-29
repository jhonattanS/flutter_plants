import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  WelcomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Bem vindo de volta,",
          style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF626262)),
        ),
        Expanded(
          child: Container(),
        ),
        Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Icon(
                Icons.notifications,
                color: Color(0xFF7A7A7A),
              )),
              Positioned(
                  left: 11,
                  top: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      height: 9,
                      width: 9,
                    ),
                  )),
              Positioned(
                  left: 12,
                  top: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.redAccent,
                      height: 8,
                      width: 8,
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
