/// Represents a single task in the to-do list.
/// This model holds the data for the task's title and its completion status.
class Task {
  final String id;
  final String title;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  /// Toggles the completion status of the task.
  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}