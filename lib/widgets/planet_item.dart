import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_lightyears/archetypes/planet/planet_archetype.dart';
import 'package:project_lightyears/models/hazard.dart';
import 'package:project_lightyears/models/planet.dart';
import 'package:project_lightyears/utils/style.dart';

class PlanetItem extends StatelessWidget {
  const PlanetItem({Key? key, required this.planet}) : super(key: key);

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    PlanetArchetype archetype = PlanetArchetypes.getFromEnum(planet.archetype);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () => Get.toNamed(
          "/planet/${planet.urlName}",
        ),
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  color: Style.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/planets/${planet.planetIcon}.gif",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      planet.name,
                      style: Style.title2,
                    ),
                    Text(
                      "type : ${archetype.title}",
                      style: Style.subtitle1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 200,
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: planet.hazards.length,
                        itemBuilder: (context, index) {
                          Hazard hazard = planet.hazards[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: InkWell(
                              onTap: () => Get.defaultDialog(
                                  title: hazard.name,
                                  middleText: hazard.description),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Style.grey2,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    hazard.name,
                                    style: Style.body1White,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
