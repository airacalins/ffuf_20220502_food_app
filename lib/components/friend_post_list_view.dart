import 'package:flutter/material.dart';

import 'package:food_app/models/models.dart';
import 'package:food_app/components/components.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Social Chefs!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          // PostListView
          ListView.separated(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 16);
            },
            itemCount: friendPosts.length,
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
