import 'dart:math';

import 'package:flutter/material.dart';

class HomescreenController with ChangeNotifier {
  
 static List dicelist = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png"
  ];
  int currentIndex = 0;

String currentDiceImage = "assets/images/button.png";

 updatedice() {
    currentIndex = Random().nextInt(dicelist.length); 
     currentDiceImage = dicelist[currentIndex];
   notifyListeners();
 }
}