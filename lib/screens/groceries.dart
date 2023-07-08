import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/grocery_card.dart';

class GroceriesScreen extends StatelessWidget {
  const GroceriesScreen({
    super.key,
    required this.groceries,
  });

  final List<GroceryItem> groceries;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        itemCount: groceries.length,
        itemBuilder: (ctx, index) => GroceryCard(
          grocery: groceries[index],
        ),
      ),
    );
  }
}
