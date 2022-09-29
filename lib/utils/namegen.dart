import 'dart:math';

import 'package:project_lightyears/controllers/boxes/planet_box.dart';

/// Based on [namegen](https://github.com/hbi99/namegen) by [Hakan Bilgin](https://github.com/hbi99/)
/// 
/// Converted to Dart and repurposed for [Projet Lighyears](https://github.com/FBanitz/project_lightyears) use by [François BANITZ](https://github.com/FBanitz)
/// 
/// Generate default names for differents things in the game
class NameGenerator {
  static String gen(List<List<String>> vowels, List<List<List<int>>> mtx) {
    // finds a 
		rdmIdx(int listLength) => (Random().nextDouble() * listLength).floor(); 

		String name = "";
		List<int> compW = [];
		List<List<int>> comp = [];

    comp = mtx[rdmIdx(mtx.length)];
    // print("$comp");
    for (int y=0; y<comp.length; y++) {
      if (y > 0) name += " ";
      compW = comp[y];
      for (int i=0; i<compW.length; i++) {
        name += vowels[compW[i]][rdmIdx(vowels[compW[i]].length)];
      }
    }
    return name;
  }

  /// Generate an inhabited planet name
  static String inhabitedPlanet() {
    final List<List<String>> vowels = [
      ["b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"],
			["a", "e", "o", "u"],
			["br", "cr", "dr", "fr", "gr", "pr", "str", "tr", "bl", "cl", "fl", "gl", "pl", "sl", "sc", "sk", "sm", "sn", "sp", "st", "sw", "ch", "sh", "th", "wh"],
			["ae", "ai", "ao", "au", "a", "ay", "ea", "ei", "eo", "eu", "e", "ey", "ua", "ue", "ui", "uo", "u", "uy", "ia", "ie", "iu", "io", "iy", "oa", "oe", "ou", "oi", "o", "oy"],
			["turn", "ter", "nus", "rus", "tania", "hiri", "hines", "gawa", "nides", "carro", "rilia", "stea", "lia", "lea", "ria", "nov", "phus", "mia", "nerth", "wei", "ruta", "tov", "zuno", "vis", "lara", "nia", "liv", "tera", "gantu", "yama", "tune", "ter", "nus", "cury", "bos", "pra", "thea", "nope", "tis", "clite"],
			["una", "ion", "iea", "iri", "illes", "ides", "agua", "olla", "inda", "eshan", "oria", "ilia", "erth", "arth", "orth", "th", "illon", "ichi", "ov", "arvis", "ara", "ars", "yke", "yria", "onoe", "ippe", "osie", "one", "ore", "ade", "adus", "urn", "ypso", "ora", "iuq", "orix", "apus", "ion", "eon", "eron", "ao", "omia"],
    ];
		List<List<List<int>>> mtx = [
      [[0, 3]],
      // [[0, 5]],
      // [[1, 4]],
      [[0, 1, 4]],
      [[1, 2, 5]],
      [[2, 3, 4]],
      [[3, 2, 5]],
      [[2, 3, 1, 4]],
      [[1, 0, 2, 5]],
      [[2, 3, 1, 4]],
      [[3, 2, 0, 5]],
      [[2, 3, 0, 3, 4]],
      [[3, 0, 3, 2, 5]],
      [[0, 3], [1, 0, 2, 5]],
      [[0, 5], [0, 1], [2, 3, 4]]
    ];
    return gen(vowels, mtx);
  }

  static String newInhabitedPlanet() {
    String name = "";
    do {
      name = inhabitedPlanet();
    } while (PlanetBox().findAll().any((planet) => planet.name.toLowerCase() == name));
    return name;
  }
}