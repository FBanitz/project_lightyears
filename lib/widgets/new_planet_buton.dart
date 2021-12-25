import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_lightyears/utils/style.dart';

class NewPlanetButon extends StatelessWidget {
  const NewPlanetButon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () => {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Style.grey, width: 2),
              color: Style.black),
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/planets/no_icon.png",
                    ),
                    const Icon(
                      Icons.add_rounded,
                      size: 70,
                      color: Style.white,
                    ),
                  ],
                ),
              ),
              Text(
                "New Planet",
                style: Style.title2white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
