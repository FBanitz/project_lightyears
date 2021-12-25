import 'package:project_lightyears/models/planet.dart';

class PlanetController {
  Planet planet = Planet();

  updatePlanet(Planet newPlanet) {
    planet = newPlanet;
  }
}
