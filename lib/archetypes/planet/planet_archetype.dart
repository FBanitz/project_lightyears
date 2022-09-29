import 'dart:math';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/models/hazard.dart';

part 'planet_archetype.g.dart';

@HiveType(typeId: 2)
enum PlanetArchetypesEnum {
  @HiveField(0)
  terran,
  @HiveField(1)
  toxic,
  @HiveField(2)
  barren,
  @HiveField(3)
  water,
  @HiveField(4)
  undefined
}

class PlanetArchetype {
  PlanetArchetype({
    required this.title,
    this.descritption = "",
    required this.planetIconPaths,
    required this.hazards,
    this.optionalHazards = const [],
  });

  final String title;
  final String descritption;
  final List<String> planetIconPaths;
  final List<Hazard> hazards;
  final List<Hazard> optionalHazards;

  static PlanetArchetypesEnum randomArchetype() {
    return PlanetArchetypesEnum.values[Random().nextInt(4)];
  }

  List<Hazard> generateHazards() {
    List<Hazard> generatedHazards = hazards;
    for (var hazard in optionalHazards) {
      if(Random().nextBool()) generatedHazards.add(hazard);
    }
    return generatedHazards;
  }
}

class PlanetArchetypes {
  static final PlanetArchetype terran = PlanetArchetype(
    title: "Terran",
    planetIconPaths: ["terran_001"],
    hazards: [Hazards.habitable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype toxic = PlanetArchetype(
    title: "Toxic",
    planetIconPaths: ["toxic_001"],
    hazards: [Hazards.irrespirable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype barren = PlanetArchetype(
    title: "Barren",
    planetIconPaths: ["barren_001", "barren_002"],
    hazards: [Hazards.noAtmo],
    optionalHazards: [Hazards.hot, Hazards.extremeHeat],
  );

  static final PlanetArchetype water = PlanetArchetype(
    title: "Water",
    planetIconPaths: ["watter_001"],
    hazards: [],
    optionalHazards: [Hazards.habitable, Hazards.hot],
  );

  static final PlanetArchetype undefined = PlanetArchetype(
    title: "? Undefined ?",
    planetIconPaths: [],
    hazards: [],
    optionalHazards: [Hazards.habitable, Hazards.hot],
  );

  static PlanetArchetype getFromEnum(PlanetArchetypesEnum inputEnum) {
    switch (inputEnum) {
      case PlanetArchetypesEnum.terran:
        return PlanetArchetypes.terran;

      case PlanetArchetypesEnum.toxic:
        return PlanetArchetypes.toxic;

      case PlanetArchetypesEnum.barren:
        return PlanetArchetypes.barren;

      case PlanetArchetypesEnum.water:
        return PlanetArchetypes.water;

      case PlanetArchetypesEnum.undefined:
        return PlanetArchetypes.undefined;
    }
  }
}
