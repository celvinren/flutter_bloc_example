import 'package:equatable/equatable.dart';

class ToDo extends Equatable {
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;

  ToDo({required this.id, required this.task, required this.description, this.isCompleted = false, this.isCancelled = false});

  ToDo copyWith({
    String? id,
    String? task,
    String? description,
    bool? isCompleted,
    bool? isCancelled,
  }) {
    return ToDo(
      id: id ?? this.id,
      task: task ?? this.task,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        task,
        description,
        isCompleted,
        isCancelled,
      ];

  static List<ToDo> todos = [
    ToDo(id: "1", task: "Taks1", description: "description 1"),
    ToDo(id: "2", task: "Taks2", description: "description 2")
  ];
}
