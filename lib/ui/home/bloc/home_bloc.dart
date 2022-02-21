import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_example/models/to_do.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBloc()
      : super(
          ToDosLoadingState(), //init state
        ) {
    on<LoadToDosEvent>(_onLoadToDos);
    on<AddTodoEvent>(_onAddToDos);
    on<UpdateTodoEvent>(_onUpdateToDos);
    on<DeleteTodoEvent>(_onDeleteToDos);
  }

  void _onLoadToDos(LoadToDosEvent event, Emitter<HomeBlocState> emit) async {
    final state = this.state;
    await Future.delayed(const Duration(seconds: 3), () {
      emit(ToDosLoadedState(todos: event.todos));
    });
  }

  void _onAddToDos(AddTodoEvent event, Emitter<HomeBlocState> emit) {
    emit(ToDosLoadingState());
    final state = this.state;
    if (state is ToDosLoadedState) {
      emit(ToDosLoadedState(todos: List.from(state.todos)..add(event.todo)));
    }
  }

  void _onUpdateToDos(UpdateTodoEvent event, Emitter<HomeBlocState> emit) {}
  void _onDeleteToDos(DeleteTodoEvent event, Emitter<HomeBlocState> emit) {}
}
