import 'package:food_app/enums/importance.dart';

class Grocery {
  final String id;
  final String name;
  final Importance importance;
  // final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;

  Grocery({
    required this.id,
    required this.name,
    required this.importance,
    // required this.color,
    required this.quantity,
    required this.date,
    this.isComplete = false,
  });

  Grocery copyWith({
    String? id,
    String? name,
    Importance? importance,
    // Color? color,
    int? quantity,
    DateTime? date,
    bool? isComplete,
  }) {
    return Grocery(
      id: id ?? this.id,
      name: name ?? this.name, 
      importance: importance ?? this.importance, 
      // color: color, 
      quantity: quantity ?? this.quantity, 
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}