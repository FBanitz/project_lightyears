import 'package:project_lightyears/models/planet.dart';

class PlanetListController {
  List<Planet> planets = [];

  addPlanet(Planet newPlanet) {
    planets.add(newPlanet);
  }
}
