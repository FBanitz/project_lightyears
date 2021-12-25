import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_lightyears/screens/planet_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Project LightYears',
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => const PlanetListScreen()),
      ],
    );
  }
}
