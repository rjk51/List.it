import 'package:flutter/material.dart';
import 'package:list_it/data/dummy_item.dart';
import 'package:list_it/widgets/new_item.dart';

class GroceryList extends StatefulWidget{

  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void _addItem() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addItem,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: groceryItems[index].category.color,
            ),
          ),
          trailing: Text(groceryItems[index].quantity.toString())
        ),
      )
    );
  }
}