import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/models/planet.dart';
import 'package:project_lightyears/utils/style.dart';
import 'package:project_lightyears/widgets/new_planet_buton.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/widgets/planet_item.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PlanetListScreen extends StatefulWidget {
  const PlanetListScreen({Key? key}) : super(key: key);

  @override
  _PlanetListScreenState createState() => _PlanetListScreenState();
}

class _PlanetListScreenState extends State<PlanetListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              filterQuality: FilterQuality.none,
              image: AssetImage("assets/space_background.png")),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Stack(
                  children: [
                    Text(
                      "Project\nLightYears",
                      style: Style.title1Background,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Project\nLightYears",
                      style: Style.title1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Scrollbar(
                    interactive: kIsWeb,
                    isAlwaysShown: kIsWeb,
                    child: ValueListenableBuilder<Box<Planet>>(
                        valueListenable:
                            Hive.box<Planet>("planets").listenable(),
                        builder: (context, planets, _) {
                          return ListView(
                            children: <Widget>[] +
                                planets.values
                                    .map((planet) => PlanetItem(
                                          planet: planet,
                                        ))
                                    .toList() +
                                [
                                  NewPlanetButon(onTap: () {
                                    setState(() {});
                                    Hive.box<Planet>("planets").add(
                                      Planet(
                                          name: "Test",
                                          urlName: "test",
                                          archetype:
                                              planetArchetypesEnum.terran,
                                          planetIcon: "terran_001",
                                          hazards: [
                                            Hazards.habitable,
                                            Hazards.hot
                                          ]),
                                    );
                                  })
                                ],
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
