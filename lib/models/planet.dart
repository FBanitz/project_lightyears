import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/models/hazard.dart';

class Planet {
  Planet(
      {this.name = "no name",
      this.archetype,
      this.planetIcon = "terran_001",
      this.infrastructures = const [],
      this.hazards = const []});
  final String name;
  final PlanetArchetype? archetype;
  final String planetIcon;
  final List infrastructures;
  final List<Hazard> hazards;
}
