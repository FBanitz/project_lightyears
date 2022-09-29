import 'package:project_lightyears/utils/extentions/string/capitalize.dart';

import 'namegen.dart';

void main() {
  int doubles = 0;
  List<String> doublons = [];
  List<String> names = [];
  int sample = 10000;
  for (int i = 0 ; i < sample ; i++) {
    String name = NameGenerator.inhabitedPlanet().capitalize;
    if (names.contains(name)) {
      doubles += 1;
      doublons += [name];
    }
    names += [name];
  }
  print(names);
  print(doublons);
  print("$doubles/$sample (${(doubles/sample)*100}%)");
}