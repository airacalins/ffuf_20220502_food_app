import 'package:flutter/material.dart';

import 'package:food_app/models/models.dart';
import 'package:food_app/api/mock_food_app_service.dart';
import 'package:food_app/components/components.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = MockFoodAppService();

  RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (BuildContext context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //
            return RecipesGridView(recipes: snapshot.data ?? []);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
