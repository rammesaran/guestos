import 'package:flutter/material.dart';
import 'package:guestos/presentation/screens/dashboard/dashboard_tab/dashboard_model.dart';

class TodosList extends StatelessWidget {
  final List<TodoItemData> todos;
  final VoidCallback? onAddTodos;

  const TodosList({Key? key, required this.todos, this.onAddTodos})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'To-Dos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: onAddTodos,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4FC3F7).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF4FC3F7)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF4FC3F7),
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'Add To-Dos',
                        style: TextStyle(
                          color: Color(0xFF4FC3F7),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Todo Items
          ...todos.map((todo) => _buildTodoItem(todo)).toList(),
        ],
      ),
    );
  }

  Widget _buildTodoItem(TodoItemData todo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: todo.isCompleted
            ? const Color(0xFF66BB6A).withOpacity(0.1)
            : Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: todo.isCompleted
              ? const Color(0xFF66BB6A).withOpacity(0.3)
              : Colors.white.withOpacity(0.1),
        ),
      ),
      child: Row(
        children: [
          // Checkbox
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: todo.isCompleted
                  ? const Color(0xFF66BB6A)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: todo.isCompleted
                    ? const Color(0xFF66BB6A)
                    : Colors.white.withOpacity(0.4),
                width: 2,
              ),
            ),
            child: todo.isCompleted
                ? const Icon(Icons.check, color: Colors.white, size: 14)
                : null,
          ),
          const SizedBox(width: 12),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.date,
                  style: TextStyle(
                    color: todo.isCompleted
                        ? const Color(0xFF66BB6A)
                        : const Color(0xFF4FC3F7),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  todo.title,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    decoration: todo.isCompleted
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // Menu Button
          if (todo.hasMenu)
            Icon(
              Icons.more_vert,
              color: Colors.white.withOpacity(0.5),
              size: 18,
            ),
        ],
      ),
    );
  }
}
