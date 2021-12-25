import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_lightyears/archetypes/hazard/hazard.dart';
import 'package:project_lightyears/models/hazard.dart';

part 'planet_archetype.g.dart';

@HiveType(typeId: 2)
enum planetArchetypesEnum {
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
    required this.planetIcons,
    required this.hazards,
    this.optionalHazards = const [],
  });

  final String title;
  final String descritption;
  final List<String> planetIcons;
  final List<Hazard> hazards;
  final List<Hazard> optionalHazards;
}

class PlanetArchetypes {
  static final PlanetArchetype terran = PlanetArchetype(
    title: "Terran",
    planetIcons: ["terran_001"],
    hazards: [Hazards.habitable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype toxic = PlanetArchetype(
    title: "Toxic",
    planetIcons: ["toxic_001"],
    hazards: [Hazards.irrespirable],
    optionalHazards: [Hazards.hot],
  );

  static final PlanetArchetype barren = PlanetArchetype(
    title: "Barren",
    planetIcons: ["barren_001", "barren_002"],
    hazards: [Hazards.noAtmo],
    optionalHazards: [Hazards.hot, Hazards.extremeHeat],
  );

  static final PlanetArchetype water = PlanetArchetype(
    title: "Water",
    planetIcons: ["watter_001"],
    hazards: [],
    optionalHazards: [Hazards.habitable, Hazards.hot],
  );

  static final PlanetArchetype undefined = PlanetArchetype(
    title: "? Undefined ?",
    planetIcons: [],
    hazards: [],
    optionalHazards: [Hazards.habitable, Hazards.hot],
  );

  static PlanetArchetype getFromEnum(planetArchetypesEnum inputEnum) {
    switch (inputEnum) {
      case planetArchetypesEnum.terran:
        return PlanetArchetypes.terran;

      case planetArchetypesEnum.toxic:
        return PlanetArchetypes.toxic;

      case planetArchetypesEnum.barren:
        return PlanetArchetypes.barren;

      case planetArchetypesEnum.water:
        return PlanetArchetypes.water;

      case planetArchetypesEnum.undefined:
        return PlanetArchetypes.undefined;
    }
  }
}
