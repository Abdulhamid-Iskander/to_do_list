import 'package:flutter/material.dart';
import '../models/task_model.dart';
import 'dart:collection';

/// Manages the state of the task list.
/// Handles adding, removing, and toggling task status, notifying listeners of changes.
class TaskProvider extends ChangeNotifier {
  // Private list to prevent direct modification from outside
  final List<Task> _tasks = [];

  /// Returns an unmodifiable view of the tasks list.
  /// This ensures data integrity by preventing direct list manipulation.
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  /// Adds a new task to the list and notifies listeners.
  /// 
  /// [title] is the text content of the new task.
  void addTask(String title) {
    final newTask = Task(
      id: DateTime.now().toString(), // Generates a unique ID based on time
      title: title,
    );
    _tasks.add(newTask);
    
    // Crucial: Notifies UI to rebuild
    notifyListeners(); 
  }

  /// Toggles the completion status of a specific task.
  /// 
  /// [task] is the task object to be toggled.
  void toggleTaskStatus(Task task) {
    task.toggleCompleted();
    notifyListeners();
  }

  /// Removes a task from the list.
  /// 
  /// [task] is the task object to be removed.
  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}