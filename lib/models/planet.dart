import 'package:hive/hive.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/models/hazard.dart';

part 'planet.g.dart';

@HiveType(typeId: 0)
class Planet {
  Planet(
      {this.name = "No name",
      this.urlName = "no_name",
      this.archetype = planetArchetypesEnum.undefined,
      this.planetIcon = "terran_001",
      this.infrastructures = const [],
      this.hazards = const []});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String urlName;

  @HiveField(2)
  final planetArchetypesEnum archetype;

  @HiveField(3)
  final String planetIcon;

  @HiveField(4)
  final List infrastructures;

  @HiveField(5)
  final List<Hazard> hazards;
}
