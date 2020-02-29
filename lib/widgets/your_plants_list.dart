import 'package:flutter/material.dart';

class YourPlantsList extends StatelessWidget {
  const YourPlantsList({
    Key key,
    @required GlobalKey<AnimatedListState> listKey2YourPlants,
    @required this.yourPlants,
  })  : _listKey2YourPlants = listKey2YourPlants,
        super(key: key);

  final GlobalKey<AnimatedListState> _listKey2YourPlants;
  final List<Widget> yourPlants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedList(
                key: _listKey2YourPlants,
                initialItemCount: yourPlants.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index, animation) {
                  return SlideTransition(
                    position: CurvedAnimation(
                      curve: Curves.easeIn,
                      parent: animation,
                    ).drive((Tween<Offset>(
                      begin: Offset(1, 0),
                      end: Offset(0, 0),
                    ))),
                    child: yourPlants[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
