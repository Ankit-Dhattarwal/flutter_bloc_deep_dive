

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_deep_dive_bloc_with_project/todo/todo_models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>>{
  TodoCubit(): super([]);
}