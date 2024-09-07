import 'package:app/component/to_do_item.dart';
import 'package:app/data/entity/to_do_entity.dart';
import 'package:app/data/source.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ToDoEntity> toDoEntities = Source().toDoEntities;

    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do App"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search To-Do",
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: toDoEntities.length,
              itemBuilder: (context, index) {
                ToDoEntity item = toDoEntities[index];

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ToDoItem(toDoEntity: item),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
