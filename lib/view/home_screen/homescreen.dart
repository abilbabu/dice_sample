import 'package:dice_sample/controller/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dice = context.watch<HomescreenController>();
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            dice.updatedice();
          },
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset(
               dice.currentDiceImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
