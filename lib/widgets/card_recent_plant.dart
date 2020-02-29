import 'package:flutter/material.dart';

class CardRecentPlant extends StatelessWidget {
  String _plant;
  Color _color;
  Widget _image;
  String _type;

  CardRecentPlant(
    this._plant,
    this._color,
    this._image,
    this._type, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: 125,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: _color,
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: _image,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    _plant,
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      letterSpacing: -0.24,
                      color: Color(
                        0xFF333333,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: Container(
                      color: Color(0xFFFFF2EA),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Text(_type,
                            style: TextStyle(
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              letterSpacing: -0.24,
                              color: Color(
                                0xFFFF4313,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Nível: Fácil",
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                          letterSpacing: -0.24,
                          color: Color(
                            0xFFBDBDBD,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
