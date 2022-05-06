import 'package:flutter/material.dart';
import 'package:food_app/api/mock_food_app_service.dart';
import 'package:food_app/models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFoodAppService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          return Center(
            child: Container(
              child: const Text('Today Recipe List View'),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
