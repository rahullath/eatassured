import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Expiration Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GroceryListScreen(),
    );
  }
}

class GroceryListScreen extends StatelessWidget {
  const GroceryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Grocery List'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of grocery items
        itemBuilder: (context, index) {
          // Replace with your grocery item widget
          return GroceryItemWidget(
            name: 'Grocery Item $index',
            expirationDate: DateTime.now().add(Duration(days: index + 1)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Replace with logic to add a new grocery item
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
