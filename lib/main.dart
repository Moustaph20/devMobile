import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/task_viewmodel.dart';
import 'views/task_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskViewModel()..fetchTasks(),
      child: MaterialApp(
        title: 'Gestion de Tâches',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskList(),
      ),
    );
  }
}
