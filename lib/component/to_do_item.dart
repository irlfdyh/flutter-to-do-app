import 'package:app/data/entity/to_do_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  final ToDoEntity toDoEntity;

  ToDoItem({super.key, required this.toDoEntity});

  @override
  State<StatefulWidget> createState() {
    return _ToDoItemState();
  }
}

class _ToDoItemState extends State<ToDoItem> {
  late ToDoEntity toDoEntity;
  bool checked = false;

  @override
  void initState() {
    super.initState();
    toDoEntity = widget.toDoEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: checked,
          onChanged: (newCheck) => setState(() {
            checked = newCheck ?? !checked;
          }),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              toDoEntity.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              toDoEntity.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              toDoEntity.dueDate,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        )
      ],
    );
  }
}
