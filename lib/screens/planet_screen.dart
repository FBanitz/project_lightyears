import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:project_lightyears/models/planet.dart';
import 'package:project_lightyears/utils/style.dart';

class PlanetScreen extends StatefulWidget {
  const PlanetScreen({
    Key? key,
  }) : super(key: key);

  @override
  _PlanetScreenState createState() => _PlanetScreenState();
}

class _PlanetScreenState extends State<PlanetScreen> {
  final Planet _planet = Hive.box<Planet>("planets")
      .values
      .firstWhere((planet) => planet.urlName == Get.parameters["name"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Style.black,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: FractionalOffset.topCenter,
              image: AssetImage('assets/space_background.png'),
              filterQuality: FilterQuality.none,
            )),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fitHeight,
            alignment: Alignment.centerRight,
            filterQuality: FilterQuality.none,
            image: AssetImage('assets/planets/${_planet.planetIcon}_half.gif'),
          )),
          child: Column(
            children: [
              Stack(
                children: [
                  Text(
                    _planet.name,
                    style: Style.title1Background,
                  ),
                  Text(
                    _planet.name,
                    style: Style.title1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
