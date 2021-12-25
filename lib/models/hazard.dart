import 'package:hive/hive.dart';

part 'hazard.g.dart';

@HiveType(typeId: 1)
class Hazard {
  Hazard(
      {this.name = "",
      this.icon = "",
      this.description = "",
      this.hazardModifier = 1,
      this.accesModifier = 1});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String icon;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final double hazardModifier;

  @HiveField(4)
  final double accesModifier;
}
