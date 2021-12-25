import 'package:project_lightyears/models/hazard.dart';

class Hazards {
  static final Hazard habitable = Hazard(
      name: "Habitable",
      description: "People can live on the surface without protection",
      accesModifier: 1.25,
      hazardModifier: 0.75);
  static final Hazard hot = Hazard(
      name: "Hot",
      description: "Living on the planet without heat protection can be trying",
      accesModifier: 1,
      hazardModifier: 1.25);
  static final Hazard extremeHeat = Hazard(
      name: "Extreme heat",
      description:
          "Living on the planet without heat protection is impossible, most tries to go out only at night",
      accesModifier: 1,
      hazardModifier: 1.50);
  static final Hazard noAtmo = Hazard(
      name: "No atmosphere",
      description:
          "Living on the planet without heat protection is impossible, most tries to go out only at night",
      accesModifier: 1,
      hazardModifier: 1.50);
  static final Hazard irrespirable = Hazard(
      name: "Irrespirable",
      description:
          "This planet has an atmosphere but you shoulden't try to live here without at least a light respiratory protection",
      accesModifier: 1,
      hazardModifier: 1.50);
}
