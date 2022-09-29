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
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: LayoutBuilder(
                builder: (context, layout) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8, 25, 0, 8),
                    child: SizedBox(
                      height: layout.maxHeight,
                      width: layout.maxWidth / 2,
                      child: OverflowBox(
                        maxWidth: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: ClipRect(
                          clipper: RectClipper(),
                          child: SizedBox(
                            width: layout.maxWidth,
                            height: layout.maxHeight,
                            child: Image.asset('assets/planets/${_planet.planetIconPath}.gif')
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
            Center(
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
          ],
        ),
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width/2, size.height);
  }

  @override
  bool shouldReclip(covariant) {
    return false;
  }
}