import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item \$index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Page')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          items.length,
          (index) => Card(
            child: Center(child: Text(items[index])),
          ),
        ),
      ),
    );
  }
}
