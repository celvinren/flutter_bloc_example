part of 'home_bloc.dart';

abstract class HomeBlocEvent extends Equatable {
  const HomeBlocEvent();

  @override
  List<Object> get props => [];
}

class LoadToDosEvent extends HomeBlocEvent {
  final List<ToDo> todos;

  const LoadToDosEvent({this.todos = const <ToDo>[]});

  @override
  List<Object> get props => [todos];
}

class AddTodoEvent extends HomeBlocEvent {
  final ToDo todo;

  const AddTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

class UpdateTodoEvent extends HomeBlocEvent {
  final ToDo todo;

  const UpdateTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

class DeleteTodoEvent extends HomeBlocEvent {
  final ToDo todo;

  const DeleteTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}
