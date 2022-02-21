part of 'home_bloc.dart';

abstract class HomeBlocState extends Equatable {
  const HomeBlocState();

  @override
  List<Object> get props => [];
}

class HomeBlocInitialState extends HomeBlocState {}

class ToDosLoadingState extends HomeBlocState {}

class ToDosLoadedState extends HomeBlocState {
  final List<ToDo> todos;

  const ToDosLoadedState({this.todos = const <ToDo>[]});

  @override
  List<Object> get props => [todos];
}
