import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/todo/todo_cubits/todo_cubits.dart';
import 'package:flutter_deep_dive_bloc_with_project/todo/todo_models/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
       body: BlocBuilder<TodoCubit, List<Todo>>(
         builder: (BuildContext context, todos) {
           return ListView.builder(
             itemCount: todos.length,
               itemBuilder: (context, index) {
               final todo = todos[index];

               return ListTile(
                 title: Text(todo.name),
                 leading: Text(todo.createAt),
               );
               }
           );
         },
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}