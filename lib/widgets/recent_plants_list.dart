import 'package:flutter/material.dart';

class RecentPlantsList extends StatelessWidget {
  const RecentPlantsList({
    Key key,
    @required GlobalKey<AnimatedListState> listKey,
    @required this.recentPlants,
  })  : _listKey = listKey,
        super(key: key);

  final GlobalKey<AnimatedListState> _listKey;
  final List<Widget> recentPlants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedList(
                key: _listKey,
                initialItemCount: recentPlants.length,
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
                    child: recentPlants[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
