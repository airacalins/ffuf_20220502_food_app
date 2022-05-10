import 'package:flutter/material.dart';
import 'package:food_app/models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  final SimpleRecipe recipe;
  const RecipeThumbnail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                '${recipe.dishImage}',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            recipe.title,
            maxLines: 2,
          ),
          Text(
            recipe.duration,
          ),
        ],
      ),
    );
  }
}
