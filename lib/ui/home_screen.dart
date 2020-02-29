import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plants/widgets/alert_card.dart';
import 'package:plants/widgets/button_add_plant.dart';
import 'package:plants/widgets/card_mini_plant.dart';
import 'package:plants/widgets/card_recent_plant.dart';
import 'package:plants/widgets/header_title.dart';
import 'package:plants/widgets/name_widget.dart';
import 'package:plants/widgets/recent_plants_list.dart';
import 'package:plants/widgets/welcome_widget.dart';
import 'package:plants/widgets/your_plants_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<AnimatedListState> _listKeyRecentPlants = GlobalKey();
  final GlobalKey<AnimatedListState> _listKey2YourPlants = GlobalKey();

  List<Widget> recentPlants = [];
  List<Widget> yourPlants = [];

  @override
  void initState() {
    super.initState();

    initRecentPlantsList();

    initYourPlantsList();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.grey[50], // status bar color
    ));

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: WelcomeWidget(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                child: NameWidget("Jhonattan"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: HeaderTitle('Plantas Recentes'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: RecentPlantsList(
                    listKey: _listKeyRecentPlants, recentPlants: recentPlants),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
                child: HeaderTitle('Minhas Plantas'),
              ),
              YourPlantsList(
                  listKey2YourPlants: _listKey2YourPlants,
                  yourPlants: yourPlants),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: HeaderTitle('Próximos Alertas'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: AlertCard(
                    "Podar Folhas",
                    "Monstera",
                    Image(
                      image: AssetImage("assets/images/folha.png"),
                      height: 85,
                    ),
                    "2/2 Vezes",
                    Color(0xFFFFCEB6)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
                child: AlertCard(
                    "Regar a Planta",
                    "Ficus",
                    Image(
                      image: AssetImage("assets/images/gota.png"),
                      height: 65,
                    ),
                    "500 mL",
                    Color(0xFFFFDEB0)),
              )
            ],
          ),
        ),
      ),
    );
  }

  void initYourPlantsList() {
    List<Widget> yourPlantsFuture = <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
        child: ButtonAddPlant(),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
        child: CardMiniPlant("Aloevera", "assets/images/aloevera_mini.png"),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
        child: CardMiniPlant("Cactus", "assets/images/cactus_mini.png"),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
        child: CardMiniPlant("Monstera", "assets/images/monstera_mini.png"),
      )
    ];

    var future = Future(() {});
    for (var i = 0; i < yourPlantsFuture.length; i++) {
      future = future.then((_) {
        return Future.delayed(Duration(milliseconds: 300), () {
          yourPlants.add(yourPlantsFuture[i]);
          _listKey2YourPlants.currentState.insertItem(i + 1);
        });
      });
    }
  }

  void initRecentPlantsList() {
    List<Widget> recentPlantsFuture = <Widget>[
      CardRecentPlant("Aloevera", Color(0xFFFFCEB6),
          Image.asset("assets/images/aloevera.png"), "Interna"),
      CardRecentPlant("Cactus", Color(0xFFFFD9A4),
          Image.asset("assets/images/cactus.png"), "Externa"),
      CardRecentPlant("Ficus", Color(0xFF56B19A),
          Image.asset("assets/images/aloevera.png"), "Interna"),
    ];

    var future = Future(() {});
    for (var i = 0; i < recentPlantsFuture.length; i++) {
      future = future.then((_) {
        return Future.delayed(Duration(milliseconds: 300), () {
          recentPlants.add(recentPlantsFuture[i]);
          _listKeyRecentPlants.currentState.insertItem(i);
        });
      });
    }
  }
}
