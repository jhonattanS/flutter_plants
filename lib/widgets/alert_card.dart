import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  String title;
  String plant;
  Widget image;
  String action;
  Color color;

  AlertCard(
    this.title,
    this.plant,
    this.image,
    this.action,
    this.color, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        height: 67,
        color: color,
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 25,
                top: 15,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: -1,
                    color: Color(
                      0xFF16175A,
                    ),
                  ),
                )),
            Positioned(
                left: 25,
                top: 40,
                child: Text(
                  plant,
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    letterSpacing: -1,
                    color: Color(
                      0xFF000000,
                    ),
                  ),
                )),
            Positioned(
                left: 120,
                top: 40,
                child: Text(
                  action,
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    letterSpacing: -1,
                    color: Color(
                      0xFF626262,
                    ),
                  ),
                )),
            Positioned(left: 230, top: 10, child: image)
          ],
        ),
      ),
    );
  }
}
