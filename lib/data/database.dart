import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Watch Tutorial', false],
      ['Breakfast', false],
      ['Drink Water', false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", toDoList);
  }
}
