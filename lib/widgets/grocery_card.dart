import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class GroceryCard extends StatelessWidget {
  const GroceryCard({
    super.key,
    required this.grocery,
  });

  final GroceryItem grocery;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.square(
          child: Container(
          color: grocery.category.color,
        ),
        ),
        Text(grocery.name),
        Text(
          grocery.quantity.toString(),
          style: TextStyle(),
        ),
      ],
    );
  }
}
