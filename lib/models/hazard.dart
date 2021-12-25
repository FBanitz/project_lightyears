class Hazard {
  Hazard(
      {this.name = "",
      this.icon = "",
      this.description = "",
      this.hazardModifier = 1,
      this.accesModifier = 1});

  final String name;
  final String icon;
  final String description;
  final double hazardModifier;
  final double accesModifier;
}
