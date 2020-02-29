import 'package:flutter/material.dart';

class CardMiniPlant extends StatelessWidget {
  String name;
  String imagePath;

  CardMiniPlant(
    this.name,
    this.imagePath, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 100,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 50,
              ),
              Text(name,
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: -1,
                    color: Color(
                      0xFF555660,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
