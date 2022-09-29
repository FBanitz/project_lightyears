import 'package:hive/hive.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/models/hazard.dart';
import 'package:project_lightyears/utils/extentions/string/capitalize.dart';
import 'package:project_lightyears/utils/extentions/string/snake_case.dart';
import 'package:project_lightyears/utils/namegen.dart';

part 'planet.g.dart';

@HiveType(typeId: 0)
class Planet extends HiveObject {
  static String boxName = "planets";
  Planet({
    this.name = "No name",
    this.urlName = "no_name",
    this.archetype = PlanetArchetypesEnum.undefined,
    this.planetIconPath = "terran_001",
    this.infrastructures = const [],
    this.hazards = const [],
  });

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String urlName;

  @HiveField(2)
  final PlanetArchetypesEnum archetype;

  @HiveField(3)
  final String planetIconPath;

  @HiveField(4)
  final List infrastructures;

  @HiveField(5)
  final List<Hazard> hazards;

  static Planet generate(
    // {bool inhabited = false}
  ) {
    String name = NameGenerator.newInhabitedPlanet();
    PlanetArchetypesEnum archetype = PlanetArchetype.randomArchetype();
    return Planet(
      name:
      // inhabited ?
      name.capitalize
      // :
      ,
      urlName: name.toSnakeCase,
      archetype: archetype,
      planetIconPath: "terran_001",
      infrastructures: [],
      hazards: PlanetArchetypes.getFromEnum(archetype).generateHazards(),
    );
  }

  @override
  toString() {
    return name;
  }
  
  toStringFull() {
    return "Planet $name: {name: $name, urlName: $urlName, archetype: $archetype, planetIconPath: $planetIconPath, infrastructures: $infrastructures}, hazards: $hazards";
  }

}
