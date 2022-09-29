import 'package:project_lightyears/models/hazard.dart';

class Hazards {
  static final Hazard habitable = Hazard(
    name: "Habitable",
    description: "People can live on the surface without protection",
    accesModifier: 1.25,
    hazardModifier: 0.75,
  );
  static final Hazard hot = Hazard(
    name: "Hot",
    description: "The heat on this planet is almost unberable during the day. Living on the planet without heat protection can be trying",
    accesModifier: 1,
    hazardModifier: 1.25,
  );
  static final Hazard extremeHeat = Hazard(
    name: "Extreme heat",
    description: "Living on the planet without heat protection is impossible. Even with one most tries to go out only at night",
    accesModifier: 1,
    hazardModifier: 1.50,
  );
  static final Hazard noAtmo = Hazard(
    name: "No atmosphere",
    description: "There is no atmosphere on this planet. Breathing is impossible without proper equipment and blood and others body fluids start to spontaneously boil without a space suit",
    accesModifier: 1,
    hazardModifier: 1.50,
  );
  static final Hazard irrespirable = Hazard(
    name: "Irrespirable",
    description: "This planet has an atmosphere but it is toxic to humain breathing. You shoulden't try to live here without at least a light respiratory protection",
    accesModifier: 1,
    hazardModifier: 1.50,
  );
}
