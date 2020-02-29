import 'package:flutter/material.dart';

class ButtonAddPlant extends StatelessWidget {
  const ButtonAddPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: OutlineButton(
          borderSide: BorderSide(color: Color(0xFF582949)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.add,
            color: Color(0xFF582949),
          ),
          onPressed: () {}),
    );
  }
}
