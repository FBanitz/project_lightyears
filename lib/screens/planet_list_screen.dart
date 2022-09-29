import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/controllers/boxes/planet_box.dart';
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

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<Planet> planets = PlanetBox().findAll();

    void reload () {
      setState(() {
        planets = PlanetBox().findAll();
      });
    }
    return Scaffold(
      backgroundColor: Style.black,
      body: SafeArea(
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
                controller: scrollController,
                interactive: kIsWeb,
                thumbVisibility: kIsWeb,
                child: ListView(
                  controller: scrollController,
                  children: <Widget>[] + planets
                  .map((planet) => PlanetItem(
                    planet: planet,
                    onDelete: () {
                      debugPrint("delete");
                      PlanetBox().delete(planet);
                      reload();
                    },
                  ))
                  .toList() +
                  [
                    NewPlanetButon(
                      onTap: () {
                      PlanetBox().add(
                        Planet.generate(),
                      );
                      reload();
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
