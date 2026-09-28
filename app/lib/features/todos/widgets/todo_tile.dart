import 'package:flow_todo/features/todos/todo.dart';
import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.todo,
    required this.onToggle,
    required this.onTap,
  });

  final Todo todo;
  final VoidCallback onToggle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(value: todo.done, onChanged: (_) => onToggle()),
      title: Text(
        todo.title,
        style: todo.done
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      onTap: onTap,
    );
  }
}
