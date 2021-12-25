import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_lightyears/models/hazard.dart';
import 'package:project_lightyears/models/planet.dart';
import 'package:project_lightyears/screens/planet_list_screen.dart';
import 'package:project_lightyears/screens/planet_screen.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Hive
    ..initFlutter()
    ..registerAdapter(PlanetAdapter())
    ..registerAdapter(HazardAdapter())
    ..registerAdapter(planetArchetypesEnumAdapter());
  await Hive.openBox<Planet>("planets");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
          scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor:
            MaterialStateProperty.all(Colors.grey[500]?.withOpacity(0.25)),
      )),
      title: 'Project LightYears',
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => const PlanetListScreen()),
        GetPage(name: '/planet/:name', page: () => const PlanetScreen()),
      ],
    );
  }
}
