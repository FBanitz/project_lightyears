import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/models/hazard.dart';

class PlanetArchetype {
  PlanetArchetype({
    required this.title,
    required this.type,
    this.descritption = "",
    required this.planetIcons,
    required this.hazards,
    this.optionalHazards = const [],
  });

  final String title;
  final planetArchetypesEnum type;
  final String descritption;
  final List<String> planetIcons;
  final List<Hazard> hazards;
  final List<Hazard> optionalHazards;
}

enum planetArchetypesEnum { terran, toxic, barren, water }

class PlanetArchetypes {
  static final PlanetArchetype terran = PlanetArchetype(
    title: "Terran",
    type: planetArchetypesEnum.terran,
    planetIcons: ["terran_001"],
    hazards: [Hazards.habitable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype toxic = PlanetArchetype(
    title: "Toxic",
    type: planetArchetypesEnum.toxic,
    planetIcons: ["toxic_001"],
    hazards: [Hazards.irrespirable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype barren = PlanetArchetype(
    title: "Barren",
    type: planetArchetypesEnum.barren,
    planetIcons: ["barren_001", "barren_002"],
    hazards: [Hazards.noAtmo],
    optionalHazards: [Hazards.hot, Hazards.extremeHeat],
  );

  static final PlanetArchetype water = PlanetArchetype(
    title: "Water",
    type: planetArchetypesEnum.water,
    planetIcons: ["watter_001"],
    hazards: [],
    optionalHazards: [Hazards.habitable, Hazards.hot],
  );
}
