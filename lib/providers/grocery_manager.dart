import 'package:flutter/material.dart';
import 'package:food_app/models/models.dart';

class GroceryManager extends ChangeNotifier {
  final List<Grocery> _groceries = List.empty(growable: true);

  List<Grocery> get groceries => List.unmodifiable(_groceries);

  void delete(int index) {
    _groceries.removeAt(index);
    notifyListeners();
  }

  void create(Grocery grocery) {
    _groceries.add(grocery);
    notifyListeners();
  }

  void update(Grocery grocery, int index) {
    _groceries[index] = grocery;
    notifyListeners();
  }

  void isCompleted(int index, bool isComplete) {
    final item = _groceries[index];
    _groceries[index]= item.copyWith(isComplete: isComplete);
    notifyListeners();
  }
}