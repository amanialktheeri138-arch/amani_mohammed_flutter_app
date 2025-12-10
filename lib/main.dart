import 'package:flutter/material.dart';

void main() {
  runApp(DoApp());
}

class DoApp extends StatefulWidget {
  @override
  _DoAppState createState() => _DoAppState();
}

class _DoAppState extends State<DoApp> {
  final List<String> _todos = [];

  void _addTodoItem(String task) {
    if (task.isNotEmpty) {
      setState(() {
        _todos.add(task);
      });
    }
  }
  void _removeTodoItem(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple ToDo App'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onSubmitted: _addTodoItem,
              decoration: InputDecoration(
                labelText: 'Enter a new task',
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_todos[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => _removeTodoItem(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}