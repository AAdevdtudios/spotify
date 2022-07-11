import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:spotify/app/data/colorData.dart';
import 'package:spotify/app/modules/home/views/component/leftDrawer.dart';

import '../controllers/home_controller.dart';

import 'package:window_manager/window_manager.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: LeftDrawer(),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: AppDataColor().mainColor,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: AppDataColor().primaryColor,
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => windowManager.startDragging(),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
