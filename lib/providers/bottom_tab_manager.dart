import 'package:flutter/material.dart';

class BottomTabManager extends ChangeNotifier {
  int selectedTab = 0;

  void showScreen(int index) {
    selectedTab = index;
    notifyListeners();
  }

  void goToRecipeScreen() {
    selectedTab = 1;
    notifyListeners();
  }

  void goToGroceryScreen() {
    selectedTab = 2;
    notifyListeners();
  }
}