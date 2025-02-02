

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/todo/todo_models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>>{
  TodoCubit(): super([]);

  void addTodo(String title){
    final todo = Todo(name: title, createAt: DateTime.now());

 //   state.add(todo);
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print('Todo-$change');
  }
}