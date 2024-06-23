import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/task_service.dart';

class TaskViewModel extends ChangeNotifier {
  final TaskService _taskService = TaskService();

  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  Future<void> fetchTasks() async {
    _tasks = await _taskService.getTasks();
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    await _taskService.insertTask(task);
    await fetchTasks();
  }

  Future<void> updateTask(Task task) async {
    await _taskService.updateTask(task);
    await fetchTasks();
  }

  Future<void> deleteTask(int id) async {
    await _taskService.deleteTask(id);
    await fetchTasks();
  }
}
