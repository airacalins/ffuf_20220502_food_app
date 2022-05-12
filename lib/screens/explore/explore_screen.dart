// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/api/mock_food_app_service.dart';
import 'package:food_app/components/components.dart';
import 'package:food_app/models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFoodAppService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (BuildContext context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data?.todayRecipes ?? [];
          final friendPosts = snapshot.data?.friendPosts ?? [];
          return ListView(
            children: [
              TodayRecipeListView(recipes: recipes),
              SizedBox(
                height: 16,
              ),
              FriendPostListView(friendPosts: friendPosts),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
