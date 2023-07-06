import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget{
  const GroceryItem({
    super.key,
    required this.id,
    required this.name,
    required this.quantity,
    });

  final String id;
  final String name;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('$quantity'),
      ),
      title: Text(name),
    );
  }

}