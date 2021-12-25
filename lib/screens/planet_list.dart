import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/models/hazard.dart';
import 'package:project_lightyears/models/planet.dart';
import 'package:project_lightyears/utils/style.dart';
import 'package:project_lightyears/widgets/new_planet_buton.dart';
import 'package:project_lightyears/widgets/planet_item.dart';

class PlanetListScreen extends StatefulWidget {
  const PlanetListScreen({Key? key}) : super(key: key);

  @override
  _PlanetListScreenState createState() => _PlanetListScreenState();
}

class _PlanetListScreenState extends State<PlanetListScreen> {
  List<Planet> planets = [
    Planet(
        name: "New Hope",
        archetype: PlanetArchetypes.terran,
        planetIcon: "terran_001",
        hazards: [Hazards.habitable, Hazards.hot]),
    Planet(
        name: "Berragen",
        archetype: PlanetArchetypes.toxic,
        planetIcon: "toxic_001",
        hazards: [Hazards.irrespirable])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
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
                      style: Style.title1,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Project\nLightYears",
                      style: Style.title1Background,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Scrollbar(
                    interactive: true,
                    child: ListView(
                      children: <Widget>[] +
                          planets
                              .map((planet) => PlanetItem(
                                    planet: planet,
                                  ))
                              .toList() +
                          [const NewPlanetButon()],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
