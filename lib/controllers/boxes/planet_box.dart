import 'package:project_lightyears/controllers/boxes/boxes.dart';
import 'package:project_lightyears/models/planet.dart';

class PlanetBox extends Boxes<Planet> {
  PlanetBox() : super(Planet.boxName);
}