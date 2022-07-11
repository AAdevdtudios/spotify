import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/colorData.dart';
import '../../controllers/home_controller.dart';

class LeftDrawer extends GetView<HomeController> {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppDataColor().primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Wrap(
            spacing: 30,
            children: const [
              LeftCategoriesButton(
                name: "Browse",
              ),
              LeftCategoriesButton(
                name: "Radios",
                icon: Icons.settings_input_antenna_outlined,
              ),
              LeftCategoriesButton(
                name: "Liked",
                icon: Icons.favorite_outline,
              ),
            ],
          ),
          /* Made For you button */
          Container(
            height: 35,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  AppDataColor().gradientBColor,
                  AppDataColor().gradientAColor,
                ],
              ),
            ),
            child: const Center(
              child: Text(
                "Made For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Text("Quick Access")
        ],
      ),
    );
  }
}

class LeftCategoriesButton extends StatelessWidget {
  final String name;
  final IconData? icon;

  const LeftCategoriesButton({super.key, required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Icon(
              icon ?? Icons.library_music,
              color: Colors.white,
              size: 12,
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
