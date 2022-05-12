// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/models/bottom_tab_manager.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Image.asset('assets/images/empty_list/empty_list.png'),
            )
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'No Groceries',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Shopping for ingredients?\nTap the + button to write them down.',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<BottomTabManager>(context, listen: false).goToRecipeScreen();
            }, 
            child: Text('Browse Recipe')
          )
        ],
      ),
    );
  }
}